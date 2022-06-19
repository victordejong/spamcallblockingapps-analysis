.class public final synthetic Lcom/linkedin/android/litr/h/-$$Lambda$a$eylAUw36t-ifaa-IwQwhh9lWk_c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/linkedin/android/litr/h/-$$Lambda$a$eylAUw36t-ifaa-IwQwhh9lWk_c;->f$0:Z

    iput-object p2, p0, Lcom/linkedin/android/litr/h/-$$Lambda$a$eylAUw36t-ifaa-IwQwhh9lWk_c;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, Lcom/linkedin/android/litr/h/-$$Lambda$a$eylAUw36t-ifaa-IwQwhh9lWk_c;->f$0:Z

    iget-object v1, p0, Lcom/linkedin/android/litr/h/-$$Lambda$a$eylAUw36t-ifaa-IwQwhh9lWk_c;->f$1:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/linkedin/android/litr/h/a;->lambda$eylAUw36t-ifaa-IwQwhh9lWk_c(ZLjava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    return-object v0
.end method
