package androidx.media2.session;

import android.os.Bundle;
import android.text.TextUtils;
import android.util.SparseArray;
import com.huawei.updatesdk.service.otaupdate.UpdateDialogStatusCode;
import com.truecaller.account.network.TokenErrorResponseDto;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import p1727n3.p1803i0.AbstractC26407e;
/* loaded from: classes-dex2jar.jar:androidx/media2/session/SessionCommand.class */
public final class SessionCommand implements AbstractC26407e {

    /* renamed from: d */
    public static final SparseArray<List<Integer>> f1234d;

    /* renamed from: e */
    public static final SparseArray<List<Integer>> f1235e;

    /* renamed from: f */
    public static final SparseArray<List<Integer>> f1236f;

    /* renamed from: g */
    public static final SparseArray<List<Integer>> f1237g;

    /* renamed from: h */
    public static final SparseArray<List<Integer>> f1238h;

    /* renamed from: a */
    public int f1239a;

    /* renamed from: b */
    public String f1240b;

    /* renamed from: c */
    public Bundle f1241c;

    static {
        SparseArray<List<Integer>> sparseArray = new SparseArray<>();
        f1234d = sparseArray;
        SparseArray<List<Integer>> sparseArray2 = new SparseArray<>();
        f1235e = sparseArray2;
        sparseArray.put(1, Arrays.asList(10000, 10001, Integer.valueOf((int) UpdateDialogStatusCode.SHOW), 10003, 10004, 11000, 11001, 11002));
        sparseArray2.put(1, Arrays.asList(10005, 10006, 10007, 10008, 10009, 10010, 10011, 10012, 10013, 10014, 10015, 10016, 10017, 10018));
        sparseArray2.put(2, Collections.singletonList(10019));
        SparseArray<List<Integer>> sparseArray3 = new SparseArray<>();
        f1236f = sparseArray3;
        sparseArray3.put(1, Arrays.asList(30000, 30001));
        SparseArray<List<Integer>> sparseArray4 = new SparseArray<>();
        f1237g = sparseArray4;
        sparseArray4.put(1, Arrays.asList(40000, Integer.valueOf((int) TokenErrorResponseDto.STATUS_INVALID_BODY_FORMAT), Integer.valueOf((int) TokenErrorResponseDto.STATUS_APPLICATION_NOT_SUPPORTED), Integer.valueOf((int) TokenErrorResponseDto.STATUS_INVALID_PHONE_NUMBER), 40010));
        sparseArray4.put(2, Collections.singletonList(Integer.valueOf((int) TokenErrorResponseDto.STATUS_NUMBER_ALREADY_REGISTERED)));
        SparseArray<List<Integer>> sparseArray5 = new SparseArray<>();
        f1238h = sparseArray5;
        sparseArray5.put(1, Arrays.asList(50000, 50001, Integer.valueOf((int) TokenErrorResponseDto.STATUS_INTERNAL_SERVER_ERROR), 50003, 50004, 50005, 50006));
    }

    public SessionCommand() {
    }

    public SessionCommand(int i) {
        if (i != 0) {
            this.f1239a = i;
            this.f1240b = null;
            this.f1241c = null;
            return;
        }
        throw new IllegalArgumentException("commandCode shouldn't be COMMAND_CODE_CUSTOM");
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof SessionCommand)) {
            return false;
        }
        SessionCommand sessionCommand = (SessionCommand) obj;
        boolean z = false;
        if (this.f1239a == sessionCommand.f1239a) {
            z = false;
            if (TextUtils.equals(this.f1240b, sessionCommand.f1240b)) {
                z = true;
            }
        }
        return z;
    }

    public int hashCode() {
        return Objects.hash(this.f1240b, Integer.valueOf(this.f1239a));
    }
}
