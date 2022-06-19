.class public final Lcom/facebook/a/b/b;
.super Ljava/lang/Object;
.source "CodelessManager.java"


# static fields
.field private static final a:Lcom/facebook/a/b/f;

.field private static b:Landroid/hardware/SensorManager;

.field private static c:Lcom/facebook/a/b/e;

.field private static d:Ljava/lang/String;

.field private static final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static f:Ljava/lang/Boolean;

.field private static volatile g:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 51
    new-instance v0, Lcom/facebook/a/b/f;

    invoke-direct {v0}, Lcom/facebook/a/b/f;-><init>()V

    sput-object v0, Lcom/facebook/a/b/b;->a:Lcom/facebook/a/b/f;

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/facebook/a/b/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/facebook/a/b/b;->f:Ljava/lang/Boolean;

    .line 58
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/facebook/a/b/b;->g:Ljava/lang/Boolean;

    return-void
.end method

.method public static a()V
    .locals 2

    .prologue
    .line 132
    sget-object v0, Lcom/facebook/a/b/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 133
    return-void
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 5

    .prologue
    .line 61
    sget-object v0, Lcom/facebook/a/b/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    invoke-static {}, Lcom/facebook/a/b/c;->a()Lcom/facebook/a/b/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/a/b/c;->a(Landroid/app/Activity;)V

    .line 67
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 68
    invoke-static {}, Lcom/facebook/j;->l()Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-static {v1}, Lcom/facebook/internal/m;->a(Ljava/lang/String;)Lcom/facebook/internal/l;

    move-result-object v2

    .line 71
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/facebook/internal/l;->i()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 73
    const-string/jumbo v3, "sensor"

    .line 74
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    sput-object v0, Lcom/facebook/a/b/b;->b:Landroid/hardware/SensorManager;

    .line 75
    sget-object v0, Lcom/facebook/a/b/b;->b:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 79
    sget-object v0, Lcom/facebook/a/b/b;->b:Landroid/hardware/SensorManager;

    const/4 v3, 0x1

    .line 80
    invoke-virtual {v0, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 81
    new-instance v3, Lcom/facebook/a/b/e;

    invoke-direct {v3, p0}, Lcom/facebook/a/b/e;-><init>(Landroid/app/Activity;)V

    sput-object v3, Lcom/facebook/a/b/b;->c:Lcom/facebook/a/b/e;

    .line 82
    sget-object v3, Lcom/facebook/a/b/b;->a:Lcom/facebook/a/b/f;

    new-instance v4, Lcom/facebook/a/b/b$1;

    invoke-direct {v4, v2, v1}, Lcom/facebook/a/b/b$1;-><init>(Lcom/facebook/internal/l;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/facebook/a/b/f;->a(Lcom/facebook/a/b/f$a;)V

    .line 95
    sget-object v1, Lcom/facebook/a/b/b;->b:Landroid/hardware/SensorManager;

    sget-object v3, Lcom/facebook/a/b/b;->a:Lcom/facebook/a/b/f;

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v0, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 98
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/facebook/internal/l;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    sget-object v0, Lcom/facebook/a/b/b;->c:Lcom/facebook/a/b/e;

    invoke-virtual {v0}, Lcom/facebook/a/b/e;->a()V

    goto :goto_0
.end method

.method static a(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 211
    sput-object p0, Lcom/facebook/a/b/b;->f:Ljava/lang/Boolean;

    .line 212
    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    invoke-static {p0}, Lcom/facebook/a/b/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .prologue
    .line 50
    sput-object p0, Lcom/facebook/a/b/b;->f:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 50
    sput-object p0, Lcom/facebook/a/b/b;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static b()V
    .locals 2

    .prologue
    .line 136
    sget-object v0, Lcom/facebook/a/b/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 137
    return-void
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 113
    sget-object v0, Lcom/facebook/a/b/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    invoke-static {}, Lcom/facebook/a/b/c;->a()Lcom/facebook/a/b/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/a/b/c;->b(Landroid/app/Activity;)V

    .line 119
    sget-object v0, Lcom/facebook/a/b/b;->c:Lcom/facebook/a/b/e;

    if-eqz v0, :cond_2

    .line 120
    sget-object v0, Lcom/facebook/a/b/b;->c:Lcom/facebook/a/b/e;

    invoke-virtual {v0}, Lcom/facebook/a/b/e;->b()V

    .line 122
    :cond_2
    sget-object v0, Lcom/facebook/a/b/b;->b:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    .line 123
    sget-object v0, Lcom/facebook/a/b/b;->b:Landroid/hardware/SensorManager;

    sget-object v1, Lcom/facebook/a/b/b;->a:Lcom/facebook/a/b/f;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0
.end method

.method static synthetic c(Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .prologue
    .line 50
    sput-object p0, Lcom/facebook/a/b/b;->g:Ljava/lang/Boolean;

    return-object p0
.end method

.method static c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    sget-object v0, Lcom/facebook/a/b/b;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 200
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/a/b/b;->d:Ljava/lang/String;

    .line 203
    :cond_0
    sget-object v0, Lcom/facebook/a/b/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static c(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 128
    invoke-static {}, Lcom/facebook/a/b/c;->a()Lcom/facebook/a/b/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/a/b/c;->c(Landroid/app/Activity;)V

    .line 129
    return-void
.end method

.method private static c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 140
    sget-object v0, Lcom/facebook/a/b/b;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    :goto_0
    return-void

    .line 143
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/facebook/a/b/b;->g:Ljava/lang/Boolean;

    .line 145
    invoke-static {}, Lcom/facebook/j;->f()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/facebook/a/b/b$2;

    invoke-direct {v1, p0}, Lcom/facebook/a/b/b$2;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static d()Z
    .locals 1

    .prologue
    .line 207
    sget-object v0, Lcom/facebook/a/b/b;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method static synthetic e()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/facebook/a/b/b;->f:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic f()Lcom/facebook/a/b/e;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/facebook/a/b/b;->c:Lcom/facebook/a/b/e;

    return-object v0
.end method
