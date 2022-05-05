package com.amazonaws.mobileconnectors.p016s3.transferutility;

import android.database.Cursor;
import androidx.core.app.Person;
import com.amazonaws.AmazonClientException;
import com.amazonaws.mobileconnectors.p016s3.transferutility.TransferService;
import com.amazonaws.services.p017s3.AmazonS3;
import com.amazonaws.services.p017s3.model.AbortMultipartUploadRequest;
import com.amazonaws.util.json.JsonUtils;
import gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject;
import java.io.File;
import java.util.Map;
import java.util.concurrent.Future;
/* renamed from: com.amazonaws.mobileconnectors.s3.transferutility.TransferRecord */
/* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transferutility/TransferRecord.class */
public class TransferRecord {
    public String bucketName;
    public long bytesCurrent;
    public long bytesTotal;
    public String cannedAcl;
    public String eTag;
    public String expirationTimeRuleId;
    public String file;
    public long fileOffset;
    public String headerCacheControl;
    public String headerContentDisposition;
    public String headerContentEncoding;
    public String headerContentType;
    public String httpExpires;

    /* renamed from: id */
    public int f812id;
    public int isLastPart;
    public int isMultipart;
    public String key;
    public int mainUploadId;
    public String md5;
    public String multipartId;
    public int partNumber;
    public String sseAlgorithm;
    public TransferState state;
    public Future<?> submittedTask;
    public TransferType type;
    public Map<String, String> userMetadata;

    public TransferRecord(int i) {
        this.f812id = i;
    }

    public boolean cancel(final AmazonS3 amazonS3, TransferStatusUpdater transferStatusUpdater) {
        if (isFinalState(this.state)) {
            return false;
        }
        transferStatusUpdater.updateState(this.f812id, TransferState.CANCELED);
        if (isRunning()) {
            this.submittedTask.cancel(true);
        }
        if (this.isMultipart == 1) {
            new Thread(new Runnable() { // from class: com.amazonaws.mobileconnectors.s3.transferutility.TransferRecord.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        amazonS3.abortMultipartUpload(new AbortMultipartUploadRequest(TransferRecord.this.bucketName, TransferRecord.this.key, TransferRecord.this.multipartId));
                        String str = "Successfully clean up multipart upload: " + TransferRecord.this.f812id;
                    } catch (AmazonClientException e) {
                        String str2 = "Failed to abort multiplart upload: " + TransferRecord.this.f812id;
                    }
                }
            }).start();
            return true;
        } else if (!TransferType.DOWNLOAD.equals(this.type)) {
            return true;
        } else {
            new File(this.file).delete();
            return true;
        }
    }

    public final boolean checkIsReadyToRun() {
        return this.partNumber == 0 && !TransferState.COMPLETED.equals(this.state);
    }

    public final boolean isFinalState(TransferState transferState) {
        return TransferState.COMPLETED.equals(transferState) || TransferState.FAILED.equals(transferState) || TransferState.CANCELED.equals(transferState);
    }

    public boolean isRunning() {
        Future<?> future = this.submittedTask;
        return future != null && !future.isDone();
    }

    public boolean pause(AmazonS3 amazonS3, TransferStatusUpdater transferStatusUpdater) {
        if (isFinalState(this.state) || TransferState.PAUSED.equals(this.state)) {
            return false;
        }
        transferStatusUpdater.updateState(this.f812id, TransferState.PAUSED);
        if (!isRunning()) {
            return true;
        }
        this.submittedTask.cancel(true);
        return true;
    }

    public boolean start(AmazonS3 amazonS3, TransferDBUtil transferDBUtil, TransferStatusUpdater transferStatusUpdater, TransferService.NetworkInfoReceiver networkInfoReceiver) {
        if (isRunning() || !checkIsReadyToRun()) {
            return false;
        }
        if (this.type.equals(TransferType.DOWNLOAD)) {
            this.submittedTask = TransferThreadPool.submitTask(new DownloadTask(this, amazonS3, transferStatusUpdater, networkInfoReceiver));
            return true;
        }
        this.submittedTask = TransferThreadPool.submitTask(new UploadTask(this, amazonS3, transferDBUtil, transferStatusUpdater, networkInfoReceiver));
        return true;
    }

    public String toString() {
        return "[id:" + this.f812id + ",bucketName:" + this.bucketName + ",key:" + this.key + ",file:" + this.file + ",type:" + this.type + ",bytesTotal:" + this.bytesTotal + ",bytesCurrent:" + this.bytesCurrent + ",fileOffset:" + this.fileOffset + ",state:" + this.state + ",cannedAcl:" + this.cannedAcl + ",mainUploadId:" + this.mainUploadId + ",isMultipart:" + this.isMultipart + ",isLastPart:" + this.isLastPart + ",partNumber:" + this.partNumber + ",multipartId:" + this.multipartId + ",eTag:" + this.eTag + "]";
    }

    public void updateFromDB(Cursor cursor) {
        this.f812id = cursor.getInt(cursor.getColumnIndexOrThrow("_id"));
        this.mainUploadId = cursor.getInt(cursor.getColumnIndexOrThrow("main_upload_id"));
        this.type = TransferType.getType(cursor.getString(cursor.getColumnIndexOrThrow("type")));
        this.state = TransferState.getState(cursor.getString(cursor.getColumnIndexOrThrow(IapProductRealmObject.STATE)));
        this.bucketName = cursor.getString(cursor.getColumnIndexOrThrow("bucket_name"));
        this.key = cursor.getString(cursor.getColumnIndexOrThrow(Person.KEY_KEY));
        cursor.getString(cursor.getColumnIndexOrThrow("version_id"));
        this.bytesTotal = cursor.getLong(cursor.getColumnIndexOrThrow("bytes_total"));
        this.bytesCurrent = cursor.getLong(cursor.getColumnIndexOrThrow("bytes_current"));
        cursor.getLong(cursor.getColumnIndexOrThrow("speed"));
        cursor.getInt(cursor.getColumnIndexOrThrow("is_requester_pays"));
        this.isMultipart = cursor.getInt(cursor.getColumnIndexOrThrow("is_multipart"));
        this.isLastPart = cursor.getInt(cursor.getColumnIndexOrThrow("is_last_part"));
        cursor.getInt(cursor.getColumnIndexOrThrow("is_encrypted"));
        this.partNumber = cursor.getInt(cursor.getColumnIndexOrThrow("part_num"));
        this.eTag = cursor.getString(cursor.getColumnIndexOrThrow("etag"));
        this.file = cursor.getString(cursor.getColumnIndexOrThrow("file"));
        this.multipartId = cursor.getString(cursor.getColumnIndexOrThrow("multipart_id"));
        cursor.getLong(cursor.getColumnIndexOrThrow("range_start"));
        cursor.getLong(cursor.getColumnIndexOrThrow("range_last"));
        this.fileOffset = cursor.getLong(cursor.getColumnIndexOrThrow("file_offset"));
        this.headerContentType = cursor.getString(cursor.getColumnIndexOrThrow("header_content_type"));
        cursor.getString(cursor.getColumnIndexOrThrow("header_content_language"));
        this.headerContentDisposition = cursor.getString(cursor.getColumnIndexOrThrow("header_content_disposition"));
        this.headerContentEncoding = cursor.getString(cursor.getColumnIndexOrThrow("header_content_encoding"));
        this.headerCacheControl = cursor.getString(cursor.getColumnIndexOrThrow("header_cache_control"));
        cursor.getString(cursor.getColumnIndexOrThrow("header_expire"));
        this.userMetadata = JsonUtils.jsonToMap(cursor.getString(cursor.getColumnIndexOrThrow("user_metadata")));
        this.expirationTimeRuleId = cursor.getString(cursor.getColumnIndexOrThrow("expiration_time_rule_id"));
        this.httpExpires = cursor.getString(cursor.getColumnIndexOrThrow("http_expires_date"));
        this.sseAlgorithm = cursor.getString(cursor.getColumnIndexOrThrow("sse_algorithm"));
        cursor.getString(cursor.getColumnIndexOrThrow("kms_key"));
        this.md5 = cursor.getString(cursor.getColumnIndexOrThrow("content_md5"));
        this.cannedAcl = cursor.getString(cursor.getColumnIndexOrThrow("canned_acl"));
    }
}
