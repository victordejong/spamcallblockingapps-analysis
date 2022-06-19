.class public final Lcom/google/android/gms/common/internal/c$l;
.super Lcom/google/android/gms/common/internal/c$f;
.source "com.google.android.gms:play-services-basement@@17.1.1"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/c$f;"
    }
.end annotation


# instance fields
.field private final a:Landroid/os/IBinder;

.field private final synthetic b:Lcom/google/android/gms/common/internal/c;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/c;ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/gms/common/internal/c$l;->b:Lcom/google/android/gms/common/internal/c;

    .line 2
    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/gms/common/internal/c$f;-><init>(Lcom/google/android/gms/common/internal/c;ILandroid/os/Bundle;)V

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/common/internal/c$l;->a:Landroid/os/IBinder;

    .line 4
    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/gms/common/b;)V
    .locals 1

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/common/internal/c$l;->b:Lcom/google/android/gms/common/internal/c;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->g(Lcom/google/android/gms/common/internal/c;)Lcom/google/android/gms/common/internal/c$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/common/internal/c$l;->b:Lcom/google/android/gms/common/internal/c;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/c;->g(Lcom/google/android/gms/common/internal/c;)Lcom/google/android/gms/common/internal/c$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/internal/c$b;->a(Lcom/google/android/gms/common/b;)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/c$l;->b:Lcom/google/android/gms/common/internal/c;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/c;->a(Lcom/google/android/gms/common/b;)V

    .line 8
    return-void
.end method

.method protected final a()Z
    .locals 6

    .prologue
    const/4 v4, 0x4

    const/4 v0, 0x0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/internal/c$l;->a:Landroid/os/IBinder;

    invoke-interface {v1}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 14
    iget-object v2, p0, Lcom/google/android/gms/common/internal/c$l;->b:Lcom/google/android/gms/common/internal/c;

    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 15
    const-string/jumbo v2, "GmsClient"

    iget-object v3, p0, Lcom/google/android/gms/common/internal/c$l;->b:Lcom/google/android/gms/common/internal/c;

    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x22

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v4, "service descriptor mismatch: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " vs. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    :cond_0
    :goto_0
    return v0

    .line 12
    :catch_0
    move-exception v1

    const-string/jumbo v1, "GmsClient"

    const-string/jumbo v2, "service probably died"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 17
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/common/internal/c$l;->b:Lcom/google/android/gms/common/internal/c;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/c$l;->a:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/internal/c;->a(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    iget-object v2, p0, Lcom/google/android/gms/common/internal/c$l;->b:Lcom/google/android/gms/common/internal/c;

    const/4 v3, 0x2

    invoke-static {v2, v3, v4, v1}, Lcom/google/android/gms/common/internal/c;->a(Lcom/google/android/gms/common/internal/c;IILandroid/os/IInterface;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/common/internal/c$l;->b:Lcom/google/android/gms/common/internal/c;

    const/4 v3, 0x3

    .line 20
    invoke-static {v2, v3, v4, v1}, Lcom/google/android/gms/common/internal/c;->a(Lcom/google/android/gms/common/internal/c;IILandroid/os/IInterface;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 21
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/internal/c$l;->b:Lcom/google/android/gms/common/internal/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/c;->a(Lcom/google/android/gms/common/internal/c;Lcom/google/android/gms/common/b;)Lcom/google/android/gms/common/b;

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/common/internal/c$l;->b:Lcom/google/android/gms/common/internal/c;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/c;->u()Landroid/os/Bundle;

    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/google/android/gms/common/internal/c$l;->b:Lcom/google/android/gms/common/internal/c;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/c;->e(Lcom/google/android/gms/common/internal/c;)Lcom/google/android/gms/common/internal/c$a;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 24
    iget-object v1, p0, Lcom/google/android/gms/common/internal/c$l;->b:Lcom/google/android/gms/common/internal/c;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/c;->e(Lcom/google/android/gms/common/internal/c;)Lcom/google/android/gms/common/internal/c$a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/common/internal/c$a;->a(Landroid/os/Bundle;)V

    .line 25
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method
