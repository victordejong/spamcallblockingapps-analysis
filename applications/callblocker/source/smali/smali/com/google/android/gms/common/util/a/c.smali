.class final Lcom/google/android/gms/common/util/a/c;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.1.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/lang/Runnable;

.field private final b:I


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;I)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/common/util/a/c;->a:Ljava/lang/Runnable;

    .line 3
    iput p2, p0, Lcom/google/android/gms/common/util/a/c;->b:I

    .line 4
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 5
    iget v0, p0, Lcom/google/android/gms/common/util/a/c;->b:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/common/util/a/c;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 7
    return-void
.end method
