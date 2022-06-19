.class public Laz0;
.super Lfv0;
.source ""


# instance fields
.field public g:Lve;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lve<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    invoke-direct {p0, p1}, Lfv0;-><init>(Landroid/app/Application;)V

    new-instance p1, Lve;

    invoke-direct {p1}, Lve;-><init>()V

    iput-object p1, p0, Laz0;->g:Lve;

    return-void
.end method

.method public static synthetic m(Laz0;)V
    .locals 0

    invoke-virtual {p0}, Lfv0;->h()V

    return-void
.end method

.method public static synthetic n(Laz0;)V
    .locals 0

    invoke-virtual {p0}, Lfv0;->h()V

    return-void
.end method


# virtual methods
.method public o(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lfv0;->l()V

    new-instance v0, Lne1;

    new-instance v1, Laz0$a;

    invoke-direct {v1, p0}, Laz0$a;-><init>(Laz0;)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lne1;-><init>(Lne1$b;Ljava/util/concurrent/ExecutorService;)V

    invoke-virtual {v0, p1}, Lne1;->b(Ljava/lang/String;)V

    return-void
.end method
