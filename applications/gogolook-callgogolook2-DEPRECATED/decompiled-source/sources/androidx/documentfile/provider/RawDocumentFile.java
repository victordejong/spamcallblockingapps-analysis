package androidx.documentfile.provider;

import android.net.Uri;
import android.webkit.MimeTypeMap;
import androidx.annotation.Nullable;
import androidx.media2.session.MediaSessionImplBase;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/documentfile/provider/RawDocumentFile.class */
public class RawDocumentFile extends DocumentFile {
    public File mFile;

    public RawDocumentFile(@Nullable DocumentFile documentFile, File file) {
        super(documentFile);
        this.mFile = file;
    }

    public static boolean deleteContents(File file) {
        File[] listFiles = file.listFiles();
        boolean z = true;
        if (listFiles != null) {
            z = true;
            for (File file2 : listFiles) {
                z = z;
                if (file2.isDirectory()) {
                    z &= deleteContents(file2);
                }
                if (!file2.delete()) {
                    String str = "Failed to delete " + file2;
                    z = false;
                }
            }
        }
        return z;
    }

    public static String getTypeForName(String str) {
        int lastIndexOf = str.lastIndexOf(46);
        if (lastIndexOf < 0) {
            return "application/octet-stream";
        }
        String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(str.substring(lastIndexOf + 1).toLowerCase());
        return mimeTypeFromExtension != null ? mimeTypeFromExtension : "application/octet-stream";
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean canRead() {
        return this.mFile.canRead();
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean canWrite() {
        return this.mFile.canWrite();
    }

    @Override // androidx.documentfile.provider.DocumentFile
    @Nullable
    public DocumentFile createDirectory(String str) {
        File file = new File(this.mFile, str);
        if (file.isDirectory() || file.mkdir()) {
            return new RawDocumentFile(this, file);
        }
        return null;
    }

    @Override // androidx.documentfile.provider.DocumentFile
    @Nullable
    public DocumentFile createFile(String str, String str2) {
        String extensionFromMimeType = MimeTypeMap.getSingleton().getExtensionFromMimeType(str);
        String str3 = str2;
        if (extensionFromMimeType != null) {
            str3 = str2 + MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM + extensionFromMimeType;
        }
        File file = new File(this.mFile, str3);
        try {
            file.createNewFile();
            return new RawDocumentFile(this, file);
        } catch (IOException e) {
            String str4 = "Failed to createFile: " + e;
            return null;
        }
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean delete() {
        deleteContents(this.mFile);
        return this.mFile.delete();
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean exists() {
        return this.mFile.exists();
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public String getName() {
        return this.mFile.getName();
    }

    @Override // androidx.documentfile.provider.DocumentFile
    @Nullable
    public String getType() {
        if (this.mFile.isDirectory()) {
            return null;
        }
        return getTypeForName(this.mFile.getName());
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public Uri getUri() {
        return Uri.fromFile(this.mFile);
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean isDirectory() {
        return this.mFile.isDirectory();
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean isFile() {
        return this.mFile.isFile();
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean isVirtual() {
        return false;
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public long lastModified() {
        return this.mFile.lastModified();
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public long length() {
        return this.mFile.length();
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public DocumentFile[] listFiles() {
        ArrayList arrayList = new ArrayList();
        File[] listFiles = this.mFile.listFiles();
        if (listFiles != null) {
            for (File file : listFiles) {
                arrayList.add(new RawDocumentFile(this, file));
            }
        }
        return (DocumentFile[]) arrayList.toArray(new DocumentFile[arrayList.size()]);
    }

    @Override // androidx.documentfile.provider.DocumentFile
    public boolean renameTo(String str) {
        File file = new File(this.mFile.getParentFile(), str);
        if (!this.mFile.renameTo(file)) {
            return false;
        }
        this.mFile = file;
        return true;
    }
}
