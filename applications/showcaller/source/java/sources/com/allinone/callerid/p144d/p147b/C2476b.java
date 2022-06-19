package com.allinone.callerid.p144d.p147b;

import com.allinone.callerid.callscreen.bean.DownloadInfo;
import com.allinone.callerid.callscreen.bean.HomeInfo;
import com.allinone.callerid.util.C3718c0;
import java.util.List;
import org.xutils.C9682x;
import org.xutils.DbManager;
import org.xutils.p343db.table.TableEntity;
/* renamed from: com.allinone.callerid.d.b.b */
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/b/b.class */
public class C2476b {

    /* renamed from: a */
    private static C2476b f8796a;

    /* renamed from: b */
    public DbManager f8797b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.d.b.b$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/b/b$a.class */
    public class C2477a implements DbManager.TableCreateListener {
        C2477a() {
            C2476b.this = r4;
        }

        @Override // org.xutils.DbManager.TableCreateListener
        public void onTableCreated(DbManager dbManager, TableEntity<?> tableEntity) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.d.b.b$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/b/b$b.class */
    public class C2478b implements DbManager.DbUpgradeListener {
        C2478b() {
            C2476b.this = r4;
        }

        @Override // org.xutils.DbManager.DbUpgradeListener
        public void onUpgrade(DbManager dbManager, int i, int i2) {
            try {
                List findAll = dbManager.selector(DownloadInfo.class).findAll();
                dbManager.dropTable(DownloadInfo.class);
                dbManager.save(findAll);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.allinone.callerid.d.b.b$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/d/b/b$c.class */
    public class C2479c implements DbManager.DbOpenListener {
        C2479c() {
            C2476b.this = r4;
        }

        @Override // org.xutils.DbManager.DbOpenListener
        public void onDbOpened(DbManager dbManager) {
            dbManager.getDatabase().enableWriteAheadLogging();
        }
    }

    private C2476b() {
        try {
            this.f8797b = C9682x.getDb(new DbManager.DaoConfig().setDbName("download.db").setDbVersion(1).setDbOpenListener(new C2479c()).setDbUpgradeListener(new C2478b()).setTableCreateListener(new C2477a()));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    public static C2476b m27274b() {
        if (f8796a == null) {
            f8796a = new C2476b();
        }
        return f8796a;
    }

    /* renamed from: a */
    public boolean m27275a(DownloadInfo downloadInfo) {
        if (downloadInfo != null) {
            try {
                DownloadInfo downloadInfo2 = (DownloadInfo) this.f8797b.selector(DownloadInfo.class).where("dataId", "=", downloadInfo.getDataId()).findFirst();
                if (downloadInfo2 == null) {
                    downloadInfo.setDownloadStatus(1);
                    downloadInfo.setTime(System.currentTimeMillis());
                    this.f8797b.save(downloadInfo);
                    if (!C3718c0.f11914a) {
                        return true;
                    }
                    C3718c0.m24436a("callscreen", "添加到数据库");
                    return true;
                }
                downloadInfo2.setAudio_path(downloadInfo.getAudio_path());
                downloadInfo2.setPath(downloadInfo.getPath());
                downloadInfo2.setDownloadStatus(1);
                downloadInfo2.setTime(System.currentTimeMillis());
                this.f8797b.update(downloadInfo2, "path", "audio_path", "download_status", "time");
                if (!C3718c0.f11914a) {
                    return true;
                }
                C3718c0.m24436a("callscreen", "更新数据库");
                return true;
            } catch (Exception e) {
                e.printStackTrace();
                if (!C3718c0.f11914a) {
                    return false;
                }
                C3718c0.m24436a("wbb", "Exception: " + e.getMessage());
                return false;
            }
        }
        return false;
    }

    /* renamed from: c */
    public DownloadInfo m27273c(HomeInfo homeInfo) {
        if (homeInfo != null) {
            DownloadInfo downloadInfo = new DownloadInfo();
            downloadInfo.setName(homeInfo.getName());
            downloadInfo.setPath(homeInfo.getPath());
            downloadInfo.setAudio_path(homeInfo.getAudio_path());
            downloadInfo.setTime(homeInfo.getTime());
            downloadInfo.setDataId(homeInfo.getData_id());
            return downloadInfo;
        }
        return null;
    }

    /* renamed from: d */
    public DownloadInfo m27272d(String str) {
        try {
            DownloadInfo downloadInfo = (DownloadInfo) this.f8797b.selector(DownloadInfo.class).where("dataId", "=", str).and("download_status", "=", 1).findFirst();
            if (downloadInfo == null) {
                return null;
            }
            return downloadInfo;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
