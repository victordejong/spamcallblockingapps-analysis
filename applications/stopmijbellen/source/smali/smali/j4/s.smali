.class public final Lj4/s;
.super Lo4/g0;
.source "SourceFile"


# instance fields
.field public final a:Lp6/c;

.field public final b:Landroid/content/Context;

.field public final c:Lj4/w;

.field public final d:Lj4/f2;

.field public final e:Lj4/m0;

.field public final f:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lj4/w;Lj4/f2;Lj4/m0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lo4/g0;-><init>()V

    new-instance v0, Lp6/c;

    const-string v1, "AssetPackExtractionService"

    .line 2
    invoke-direct {v0, v1}, Lp6/c;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lj4/s;->a:Lp6/c;

    iput-object p1, p0, Lj4/s;->b:Landroid/content/Context;

    iput-object p2, p0, Lj4/s;->c:Lj4/w;

    iput-object p3, p0, Lj4/s;->d:Lj4/f2;

    iput-object p4, p0, Lj4/s;->e:Lj4/m0;

    const-string p2, "notification"

    .line 3
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lj4/s;->f:Landroid/app/NotificationManager;

    return-void
.end method
