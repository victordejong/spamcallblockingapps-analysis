.class final Lcom/google/android/gms/gcm/zzm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/gcm/zzn;


# instance fields
.field private final zzav:Landroid/app/PendingIntent;

.field private final zzl:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/gcm/zzm;->zzl:Landroid/content/Context;

    .line 3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.example.invalidpackage"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    invoke-static {p1, v1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/gcm/zzm;->zzav:Landroid/app/PendingIntent;

    return-void
.end method

.method private final zzh(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .line 21
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.gcm.ACTION_SCHEDULE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.google.android.gms"

    .line 22
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    iget-object v1, p0, Lcom/google/android/gms/gcm/zzm;->zzav:Landroid/app/PendingIntent;

    const-string v2, "app"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "source"

    const/4 v2, 0x4

    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "source_version"

    const v2, 0xbdfcb8

    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "scheduler_action"

    .line 26
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public final zzd(Landroid/content/ComponentName;)Z
    .locals 2

    const-string v0, "CANCEL_ALL"

    .line 17
    invoke-direct {p0, v0}, Lcom/google/android/gms/gcm/zzm;->zzh(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "component"

    .line 18
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 19
    iget-object p1, p0, Lcom/google/android/gms/gcm/zzm;->zzl:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final zzd(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "CANCEL_TASK"

    .line 12
    invoke-direct {p0, v0}, Lcom/google/android/gms/gcm/zzm;->zzh(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "component"

    .line 13
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "tag"

    .line 14
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    iget-object p1, p0, Lcom/google/android/gms/gcm/zzm;->zzl:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final zzd(Lcom/google/android/gms/gcm/Task;)Z
    .locals 2

    const-string v0, "SCHEDULE_TASK"

    .line 6
    invoke-direct {p0, v0}, Lcom/google/android/gms/gcm/zzm;->zzh(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 7
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 8
    invoke-virtual {p1, v1}, Lcom/google/android/gms/gcm/Task;->toBundle(Landroid/os/Bundle;)V

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 10
    iget-object p1, p0, Lcom/google/android/gms/gcm/zzm;->zzl:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1
.end method
