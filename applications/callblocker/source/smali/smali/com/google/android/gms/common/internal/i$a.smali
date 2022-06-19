.class public final Lcom/google/android/gms/common/internal/i$a;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.1.1"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "a"
.end annotation


# static fields
.field private static final f:Landroid/net/Uri;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Landroid/content/ComponentName;

.field private final d:I

.field private final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v1, "content"

    .line 55
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "com.google.android.gms.chimera"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/internal/i$a;->f:Landroid/net/Uri;

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/i$a;->a:Ljava/lang/String;

    .line 7
    invoke-static {p2}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/i$a;->b:Ljava/lang/String;

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/i$a;->c:Landroid/content/ComponentName;

    .line 9
    iput p3, p0, Lcom/google/android/gms/common/internal/i$a;->d:I

    .line 10
    iput-boolean p4, p0, Lcom/google/android/gms/common/internal/i$a;->e:Z

    .line 11
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 23
    .line 24
    iget-object v1, p0, Lcom/google/android/gms/common/internal/i$a;->a:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 26
    iget-boolean v1, p0, Lcom/google/android/gms/common/internal/i$a;->e:Z

    if-eqz v1, :cond_1

    .line 28
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 29
    const-string/jumbo v2, "serviceActionBundleKey"

    iget-object v3, p0, Lcom/google/android/gms/common/internal/i$a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/common/internal/i$a;->f:Landroid/net/Uri;

    const-string/jumbo v4, "serviceIntentCall"

    .line 32
    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 33
    if-nez v1, :cond_3

    move-object v1, v0

    .line 36
    :goto_0
    if-nez v1, :cond_0

    .line 37
    const-string/jumbo v2, "ConnectionStatusConfig"

    const-string/jumbo v3, "Dynamic lookup for intent failed for action: "

    iget-object v0, p0, Lcom/google/android/gms/common/internal/i$a;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v0, v1

    .line 40
    :cond_1
    if-nez v0, :cond_2

    .line 41
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/i$a;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/i$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 43
    :cond_2
    :goto_2
    return-object v0

    .line 35
    :cond_3
    const-string/jumbo v0, "serviceResponseIntentKey"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    move-object v1, v0

    goto :goto_0

    .line 37
    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 42
    :cond_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/i$a;->c:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_2
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/android/gms/common/internal/i$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/android/gms/common/internal/i$a;->c:Landroid/content/ComponentName;

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/google/android/gms/common/internal/i$a;->d:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 45
    if-ne p0, p1, :cond_1

    .line 53
    :cond_0
    :goto_0
    return v0

    .line 47
    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/common/internal/i$a;

    if-nez v2, :cond_2

    move v0, v1

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    check-cast p1, Lcom/google/android/gms/common/internal/i$a;

    .line 50
    iget-object v2, p0, Lcom/google/android/gms/common/internal/i$a;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/common/internal/i$a;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/common/internal/i$a;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/common/internal/i$a;->b:Ljava/lang/String;

    .line 51
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/common/internal/i$a;->c:Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/google/android/gms/common/internal/i$a;->c:Landroid/content/ComponentName;

    .line 52
    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/q;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/google/android/gms/common/internal/i$a;->d:I

    iget v3, p1, Lcom/google/android/gms/common/internal/i$a;->d:I

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/google/android/gms/common/internal/i$a;->e:Z

    iget-boolean v3, p1, Lcom/google/android/gms/common/internal/i$a;->e:Z

    if-eq v2, v3, :cond_0

    :cond_3
    move v0, v1

    .line 53
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 44
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/common/internal/i$a;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/i$a;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/common/internal/i$a;->c:Landroid/content/ComponentName;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/common/internal/i$a;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/android/gms/common/internal/i$a;->e:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/q;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/common/internal/i$a;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/i$a;->c:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/i$a;->a:Ljava/lang/String;

    goto :goto_0
.end method
