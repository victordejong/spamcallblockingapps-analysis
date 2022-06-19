.class Lcom/facebook/login/d;
.super Lcom/facebook/login/n;
.source "DeviceAuthMethodHandler.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/login/d;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 134
    new-instance v0, Lcom/facebook/login/d$1;

    invoke-direct {v0}, Lcom/facebook/login/d$1;-><init>()V

    sput-object v0, Lcom/facebook/login/d;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/facebook/login/n;-><init>(Landroid/os/Parcel;)V

    .line 117
    return-void
.end method

.method constructor <init>(Lcom/facebook/login/j;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/facebook/login/n;-><init>(Lcom/facebook/login/j;)V

    .line 39
    return-void
.end method

.method private b(Lcom/facebook/login/j$c;)V
    .locals 3

    .prologue
    .line 48
    iget-object v0, p0, Lcom/facebook/login/d;->b:Lcom/facebook/login/j;

    invoke-virtual {v0}, Lcom/facebook/login/j;->b()Landroidx/fragment/app/d;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/d;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/login/d;->e_()Lcom/facebook/login/c;

    move-result-object v1

    .line 54
    invoke-virtual {v0}, Landroidx/fragment/app/d;->m()Landroidx/fragment/app/i;

    move-result-object v0

    const-string/jumbo v2, "login_with_facebook"

    .line 53
    invoke-virtual {v1, v0, v2}, Lcom/facebook/login/c;->a(Landroidx/fragment/app/i;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v1, p1}, Lcom/facebook/login/c;->a(Lcom/facebook/login/j$c;)V

    goto :goto_0
.end method

.method public static declared-synchronized d()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 3

    .prologue
    .line 108
    const-class v1, Lcom/facebook/login/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/login/d;->c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sput-object v0, Lcom/facebook/login/d;->c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 112
    :cond_0
    sget-object v0, Lcom/facebook/login/d;->c:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    const-string/jumbo v0, "device_auth"

    return-object v0
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/facebook/login/d;->b:Lcom/facebook/login/j;

    .line 72
    invoke-virtual {v0}, Lcom/facebook/login/j;->c()Lcom/facebook/login/j$c;

    move-result-object v0

    const/4 v1, 0x0

    .line 74
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 71
    invoke-static {v0, v1, v2}, Lcom/facebook/login/j$d;->a(Lcom/facebook/login/j$c;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/login/j$d;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/facebook/login/d;->b:Lcom/facebook/login/j;

    invoke-virtual {v1, v0}, Lcom/facebook/login/j;->a(Lcom/facebook/login/j$d;)V

    .line 76
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lcom/facebook/d;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/d;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .prologue
    .line 89
    new-instance v0, Lcom/facebook/a;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/facebook/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lcom/facebook/d;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)V

    .line 101
    iget-object v1, p0, Lcom/facebook/login/d;->b:Lcom/facebook/login/j;

    .line 102
    invoke-virtual {v1}, Lcom/facebook/login/j;->c()Lcom/facebook/login/j$c;

    move-result-object v1

    .line 101
    invoke-static {v1, v0}, Lcom/facebook/login/j$d;->a(Lcom/facebook/login/j$c;Lcom/facebook/a;)Lcom/facebook/login/j$d;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/facebook/login/d;->b:Lcom/facebook/login/j;

    invoke-virtual {v1, v0}, Lcom/facebook/login/j;->a(Lcom/facebook/login/j$d;)V

    .line 105
    return-void
.end method

.method a(Lcom/facebook/login/j$c;)Z
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/facebook/login/d;->b(Lcom/facebook/login/j$c;)V

    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/facebook/login/d;->b:Lcom/facebook/login/j;

    .line 65
    invoke-virtual {v0}, Lcom/facebook/login/j;->c()Lcom/facebook/login/j$c;

    move-result-object v0

    const-string/jumbo v1, "User canceled log in."

    .line 64
    invoke-static {v0, v1}, Lcom/facebook/login/j$d;->a(Lcom/facebook/login/j$c;Ljava/lang/String;)Lcom/facebook/login/j$d;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/facebook/login/d;->b:Lcom/facebook/login/j;

    invoke-virtual {v1, v0}, Lcom/facebook/login/j;->a(Lcom/facebook/login/j$d;)V

    .line 68
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method protected e_()Lcom/facebook/login/c;
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/facebook/login/c;

    invoke-direct {v0}, Lcom/facebook/login/c;-><init>()V

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 131
    invoke-super {p0, p1, p2}, Lcom/facebook/login/n;->writeToParcel(Landroid/os/Parcel;I)V

    .line 132
    return-void
.end method
