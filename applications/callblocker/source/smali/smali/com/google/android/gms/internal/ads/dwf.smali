.class final synthetic Lcom/google/android/gms/internal/ads/dwf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/dwc;

.field private final b:Lcom/google/android/gms/internal/ads/dvv;

.field private final c:Lcom/google/android/gms/internal/ads/dvu;

.field private final d:Lcom/google/android/gms/internal/ads/yo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/dwc;Lcom/google/android/gms/internal/ads/dvv;Lcom/google/android/gms/internal/ads/dvu;Lcom/google/android/gms/internal/ads/yo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dwf;->a:Lcom/google/android/gms/internal/ads/dwc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dwf;->b:Lcom/google/android/gms/internal/ads/dvv;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/dwf;->c:Lcom/google/android/gms/internal/ads/dvu;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/dwf;->d:Lcom/google/android/gms/internal/ads/yo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dwf;->a:Lcom/google/android/gms/internal/ads/dwc;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dwf;->b:Lcom/google/android/gms/internal/ads/dvv;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dwf;->c:Lcom/google/android/gms/internal/ads/dvu;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dwf;->d:Lcom/google/android/gms/internal/ads/yo;

    .line 2
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dvv;->c()Lcom/google/android/gms/internal/ads/dvz;

    move-result-object v0

    .line 3
    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/dvz;->a(Lcom/google/android/gms/internal/ads/dvu;)Lcom/google/android/gms/internal/ads/dvt;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dvt;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "No entry contents."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/yo;->a(Ljava/lang/Throwable;)Z

    .line 6
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/dwc;->a:Lcom/google/android/gms/internal/ads/dwa;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dwa;->a(Lcom/google/android/gms/internal/ads/dwa;)V

    .line 20
    :goto_0
    return-void

    .line 8
    :cond_0
    new-instance v2, Lcom/google/android/gms/internal/ads/dwh;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dvt;->b()Ljava/io/InputStream;

    move-result-object v0

    const/4 v4, 0x1

    invoke-direct {v2, v1, v0, v4}, Lcom/google/android/gms/internal/ads/dwh;-><init>(Lcom/google/android/gms/internal/ads/dwc;Ljava/io/InputStream;I)V

    .line 10
    invoke-virtual {v2}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    .line 11
    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    .line 12
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v2, "Unable to read from cache."

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 16
    :catch_0
    move-exception v0

    .line 17
    :goto_1
    const-string/jumbo v2, "Unable to obtain a cache service instance."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/uu;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/yo;->a(Ljava/lang/Throwable;)Z

    .line 19
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/dwc;->a:Lcom/google/android/gms/internal/ads/dwa;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dwa;->a(Lcom/google/android/gms/internal/ads/dwa;)V

    goto :goto_0

    .line 13
    :cond_1
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/io/PushbackInputStream;->unread(I)V

    .line 14
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/yo;->b(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 16
    :catch_1
    move-exception v0

    goto :goto_1
.end method
