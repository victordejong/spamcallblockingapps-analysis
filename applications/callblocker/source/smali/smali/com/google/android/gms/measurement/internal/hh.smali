.class final Lcom/google/android/gms/measurement/internal/hh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Z

.field private final synthetic b:Landroid/net/Uri;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Lcom/google/android/gms/measurement/internal/hd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/hd;ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/hh;->e:Lcom/google/android/gms/measurement/internal/hd;

    iput-boolean p2, p0, Lcom/google/android/gms/measurement/internal/hh;->a:Z

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/hh;->b:Landroid/net/Uri;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/hh;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/hh;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/hh;->e:Lcom/google/android/gms/measurement/internal/hd;

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/hh;->a:Z

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/hh;->b:Landroid/net/Uri;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/hh;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/hh;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/hd;->a(Lcom/google/android/gms/measurement/internal/hd;ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    return-void
.end method
