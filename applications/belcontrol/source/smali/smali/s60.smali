.class public Ls60;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static e:Ls60;


# instance fields
.field public a:Lm60;

.field public b:Ln60;

.field public c:Lq60;

.field public d:Lr60;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lv70;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lm60;

    invoke-direct {v0, p1, p2}, Lm60;-><init>(Landroid/content/Context;Lv70;)V

    iput-object v0, p0, Ls60;->a:Lm60;

    new-instance v0, Ln60;

    invoke-direct {v0, p1, p2}, Ln60;-><init>(Landroid/content/Context;Lv70;)V

    iput-object v0, p0, Ls60;->b:Ln60;

    new-instance v0, Lq60;

    invoke-direct {v0, p1, p2}, Lq60;-><init>(Landroid/content/Context;Lv70;)V

    iput-object v0, p0, Ls60;->c:Lq60;

    new-instance v0, Lr60;

    invoke-direct {v0, p1, p2}, Lr60;-><init>(Landroid/content/Context;Lv70;)V

    iput-object v0, p0, Ls60;->d:Lr60;

    return-void
.end method

.method public static declared-synchronized c(Landroid/content/Context;Lv70;)Ls60;
    .locals 2

    const-class v0, Ls60;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ls60;->e:Ls60;

    if-nez v1, :cond_0

    new-instance v1, Ls60;

    invoke-direct {v1, p0, p1}, Ls60;-><init>(Landroid/content/Context;Lv70;)V

    sput-object v1, Ls60;->e:Ls60;

    :cond_0
    sget-object p0, Ls60;->e:Ls60;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public a()Lm60;
    .locals 1

    iget-object v0, p0, Ls60;->a:Lm60;

    return-object v0
.end method

.method public b()Ln60;
    .locals 1

    iget-object v0, p0, Ls60;->b:Ln60;

    return-object v0
.end method

.method public d()Lq60;
    .locals 1

    iget-object v0, p0, Ls60;->c:Lq60;

    return-object v0
.end method

.method public e()Lr60;
    .locals 1

    iget-object v0, p0, Ls60;->d:Lr60;

    return-object v0
.end method
