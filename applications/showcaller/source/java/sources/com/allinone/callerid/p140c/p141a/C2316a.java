package com.allinone.callerid.p140c.p141a;

import android.content.Context;
import com.allinone.callerid.bean.CustomBlock;
import com.allinone.callerid.bean.EZBlackList;
import com.allinone.callerid.main.EZCallApplication;
import com.allinone.callerid.p140c.p142b.C2320b;
import com.allinone.callerid.p140c.p142b.C2321c;
import com.allinone.callerid.util.C3718c0;
import com.allinone.callerid.util.C3725e;
import com.allinone.callerid.util.C3800m;
import com.google.android.gms.auth.api.signin.C5901a;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.api.client.googleapis.extensions.android.gms.auth.C8607a;
import com.google.api.client.googleapis.extensions.android.gms.auth.UserRecoverableAuthIOException;
import com.google.api.client.json.p289i.C8676a;
import com.google.api.services.drive.Drive;
import com.google.api.services.drive.DriveScopes;
import com.google.api.services.drive.model.File;
import com.google.api.services.drive.model.FileList;
import java.io.FileOutputStream;
import java.util.Collections;
import java.util.List;
import p078c.p084c.p114b.p115a.p116a.p117a.p118b.C1970a;
/* renamed from: com.allinone.callerid.c.a.a */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/c/a/a.class */
public class C2316a {

    /* renamed from: a */
    public static final String f8138a = EZCallApplication.m26146c().getExternalFilesDir("") + "/contacts.vcf";

    /* renamed from: b */
    private static final String f8139b = EZCallApplication.m26146c().getExternalFilesDir("") + "/blocklist.txt";

    /* renamed from: c */
    private static final String f8140c = EZCallApplication.m26146c().getExternalFilesDir("") + "/customblocklist.txt";

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.c.a.a$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/c/a/a$a.class */
    public class C2317a implements AbstractC2318b {
        C2317a() {
        }

        @Override // com.allinone.callerid.p140c.p141a.AbstractC2318b
        /* renamed from: b */
        public void mo27663b() {
        }

        @Override // com.allinone.callerid.p140c.p141a.AbstractC2318b
        /* renamed from: c */
        public void mo27662c() {
        }

        @Override // com.allinone.callerid.p140c.p141a.AbstractC2318b
        /* renamed from: d */
        public void mo27661d(UserRecoverableAuthIOException userRecoverableAuthIOException) {
        }
    }

    /* renamed from: a */
    public static void m27667a(Context context) {
        GoogleSignInAccount m17620c;
        int m27653d = C2321c.m27653d();
        if (C3725e.m24417b(context)) {
            if ((!C3725e.m24415d(context) && (!C3725e.m24416c(context) || m27653d != 1)) || (m17620c = C5901a.m17620c(context)) == null) {
                return;
            }
            C8607a m3272d = C8607a.m3272d(context, Collections.singleton(DriveScopes.DRIVE_FILE));
            m3272d.m3273c(m17620c.m17664P());
            m27666b(context, new Drive.Builder(C1970a.m28427a(), new C8676a(), m3272d).setApplicationName(context.getResources().getString(2131755110)).build(), new C2317a());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0103 A[Catch: Exception -> 0x0250, UserRecoverableAuthIOException -> 0x0286, TRY_ENTER, TRY_LEAVE, TryCatch #2 {UserRecoverableAuthIOException -> 0x0286, Exception -> 0x0250, blocks: (B:2:0x0000, B:4:0x0018, B:6:0x0022, B:8:0x002c, B:10:0x0036, B:12:0x0040, B:14:0x004a, B:16:0x0069, B:18:0x00ab, B:20:0x00b7, B:22:0x00e0, B:24:0x00ea, B:26:0x0103, B:28:0x014a, B:30:0x0157, B:32:0x0180, B:34:0x018b, B:36:0x01a0, B:38:0x01e2, B:40:0x01ed, B:42:0x0215, B:44:0x021f, B:46:0x0228, B:48:0x0232, B:51:0x023e, B:52:0x0247), top: B:64:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x01a0 A[Catch: Exception -> 0x0250, UserRecoverableAuthIOException -> 0x0286, TRY_LEAVE, TryCatch #2 {UserRecoverableAuthIOException -> 0x0286, Exception -> 0x0250, blocks: (B:2:0x0000, B:4:0x0018, B:6:0x0022, B:8:0x002c, B:10:0x0036, B:12:0x0040, B:14:0x004a, B:16:0x0069, B:18:0x00ab, B:20:0x00b7, B:22:0x00e0, B:24:0x00ea, B:26:0x0103, B:28:0x014a, B:30:0x0157, B:32:0x0180, B:34:0x018b, B:36:0x01a0, B:38:0x01e2, B:40:0x01ed, B:42:0x0215, B:44:0x021f, B:46:0x0228, B:48:0x0232, B:51:0x023e, B:52:0x0247), top: B:64:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0228 A[Catch: Exception -> 0x0250, UserRecoverableAuthIOException -> 0x0286, TryCatch #2 {UserRecoverableAuthIOException -> 0x0286, Exception -> 0x0250, blocks: (B:2:0x0000, B:4:0x0018, B:6:0x0022, B:8:0x002c, B:10:0x0036, B:12:0x0040, B:14:0x004a, B:16:0x0069, B:18:0x00ab, B:20:0x00b7, B:22:0x00e0, B:24:0x00ea, B:26:0x0103, B:28:0x014a, B:30:0x0157, B:32:0x0180, B:34:0x018b, B:36:0x01a0, B:38:0x01e2, B:40:0x01ed, B:42:0x0215, B:44:0x021f, B:46:0x0228, B:48:0x0232, B:51:0x023e, B:52:0x0247), top: B:64:0x0000 }] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m27666b(android.content.Context r4, com.google.api.services.drive.Drive r5, com.allinone.callerid.p140c.p141a.AbstractC2318b r6) {
        /*
            Method dump skipped, instructions count: 699
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.allinone.callerid.p140c.p141a.C2316a.m27666b(android.content.Context, com.google.api.services.drive.Drive, com.allinone.callerid.c.a.b):void");
    }

    /* renamed from: c */
    public static void m27665c(Drive drive, AbstractC2318b abstractC2318b) {
        List<Object> m27658a;
        List<Object> m27658a2;
        try {
            FileList execute = drive.files().list().setQ("name = 'contacts.vcf' and trashed = false").setSpaces("drive").setFields2("nextPageToken, files(id, name)").execute();
            if (execute.getFiles() != null && execute.getFiles().size() > 0) {
                File file = execute.getFiles().get(0);
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("backup", "name:" + file.getName() + " id:" + file.getId());
                }
                drive.files().get(file.getId()).executeMediaAndDownloadTo(new FileOutputStream(new java.io.File(f8138a)));
                abstractC2318b.mo27662c();
            }
            FileList execute2 = drive.files().list().setQ("name = 'blocklist.txt' and trashed = false").setSpaces("drive").setFields2("nextPageToken, files(id, name)").execute();
            if (execute2.getFiles() != null && execute2.getFiles().size() > 0) {
                File file2 = execute2.getFiles().get(0);
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("backup", "name:" + file2.getName() + " id:" + file2.getId());
                }
                drive.files().get(file2.getId()).executeMediaAndDownloadTo(new FileOutputStream(new java.io.File(f8139b)));
            }
            FileList execute3 = drive.files().list().setQ("name = 'customblocklist.txt' and trashed = false").setSpaces("drive").setFields2("nextPageToken, files(id, name)").execute();
            if (execute3.getFiles() != null && execute3.getFiles().size() > 0) {
                File file3 = execute3.getFiles().get(0);
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("backup", "name:" + file3.getName() + " id:" + file3.getId());
                }
                drive.files().get(file3.getId()).executeMediaAndDownloadTo(new FileOutputStream(new java.io.File(f8140c)));
            }
            java.io.File file4 = new java.io.File(f8139b);
            if (file4.exists() && (m27658a2 = C2320b.m27658a(EZCallApplication.m26146c(), "blocklist.txt")) != null && m27658a2.size() > 0) {
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("backup", "myBlockList:" + m27658a2.toString());
                }
                C3800m c3800m = new C3800m(EZCallApplication.m26146c());
                for (int i = 0; i < m27658a2.size(); i++) {
                    EZBlackList eZBlackList = (EZBlackList) m27658a2.get(i);
                    if (!c3800m.m24099j(eZBlackList.getNumber()).booleanValue()) {
                        EZBlackList eZBlackList2 = new EZBlackList();
                        eZBlackList2.setNumber(eZBlackList.getNumber());
                        eZBlackList2.setName(eZBlackList.getName());
                        eZBlackList2.setIs_myblock("true");
                        c3800m.m24097l(eZBlackList2);
                    }
                }
                file4.delete();
                if (C3718c0.f11914a) {
                    C3718c0.m24436a("backup", "myBlockList_restore_ok");
                }
            }
            java.io.File file5 = new java.io.File(f8140c);
            if (!file5.exists() || (m27658a = C2320b.m27658a(EZCallApplication.m26146c(), "customblocklist.txt")) == null || m27658a.size() <= 0) {
                return;
            }
            if (C3718c0.f11914a) {
                C3718c0.m24436a("backup", "customBlockList:" + m27658a.toString());
            }
            C3800m c3800m2 = new C3800m(EZCallApplication.m26146c());
            for (int i2 = 0; i2 < m27658a.size(); i2++) {
                CustomBlock customBlock = (CustomBlock) m27658a.get(i2);
                if (!c3800m2.m24100i(customBlock.getNumber(), String.valueOf(customBlock.getType())).booleanValue()) {
                    c3800m2.m24096m(customBlock.getNumber(), customBlock.getType());
                }
            }
            file5.delete();
            if (!C3718c0.f11914a) {
                return;
            }
            C3718c0.m24436a("backup", "customBlockList_restore_ok");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: d */
    private static String m27664d(Drive drive, String str) {
        String str2;
        String str3 = "root";
        try {
            Drive.Files.List list = drive.files().list();
            StringBuilder sb = new StringBuilder();
            sb.append("mimeType = 'application/vnd.google-apps.folder' and name = '");
            sb.append(str);
            sb.append("' and trashed = false");
            FileList execute = list.setQ(sb.toString()).setSpaces("drive").setFields2("nextPageToken, files(id, name)").execute();
            if (execute.getFiles() == null || execute.getFiles().size() <= 0) {
                File file = new File();
                file.setName(str);
                file.setMimeType("application/vnd.google-apps.folder");
                str3 = "root";
                File execute2 = drive.files().create(file).setFields2("id").execute();
                str2 = "root";
                if (execute2 != null) {
                    String id = execute2.getId();
                    str3 = id;
                    str2 = id;
                    if (C3718c0.f11914a) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("folderId:");
                        sb2.append(execute2.getId());
                        str3 = id;
                        C3718c0.m24436a("backup", sb2.toString());
                        str2 = id;
                    }
                }
            } else {
                File file2 = execute.getFiles().get(0);
                String id2 = file2.getId();
                str3 = id2;
                str2 = id2;
                if (C3718c0.f11914a) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("folderName:");
                    sb3.append(file2.getName());
                    sb3.append(" folderId:");
                    sb3.append(file2.getId());
                    str3 = id2;
                    C3718c0.m24436a("backup", sb3.toString());
                    str2 = id2;
                }
            }
        } catch (Throwable th) {
            if (C3718c0.f11914a) {
                C3718c0.m24436a("backup", "searchFolderIdException:" + th.getMessage());
            }
            th.printStackTrace();
            str2 = str3;
        }
        return str2;
    }
}
