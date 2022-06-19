.class final Lcom/google/android/gms/measurement/internal/io;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/content/ComponentName;

.field private final synthetic b:Lcom/google/android/gms/measurement/internal/im;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/im;Landroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/io;->b:Lcom/google/android/gms/measurement/internal/im;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/io;->a:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/io;->b:Lcom/google/android/gms/measurement/internal/im;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/im;->a:Lcom/google/android/gms/measurement/internal/hu;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/io;->a:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/hu;->a(Lcom/google/android/gms/measurement/internal/hu;Landroid/content/ComponentName;)V

    .line 3
    return-void
.end method
