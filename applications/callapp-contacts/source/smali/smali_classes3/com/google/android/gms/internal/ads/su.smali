.class final synthetic Lcom/google/android/gms/internal/ads/su;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Ljava/io/OutputStream;

.field private final b:[B


# direct methods
.method constructor <init>(Ljava/io/OutputStream;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/su;->a:Ljava/io/OutputStream;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/su;->b:[B

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/su;->a:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/su;->b:[B

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzaue;->zza(Ljava/io/OutputStream;[B)V

    return-void
.end method
