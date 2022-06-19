.class final Lcom/google/android/gms/internal/ads/cvr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cvu;


# static fields
.field private static final a:Lcom/google/android/gms/internal/ads/beb$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/beb$a;->c()Lcom/google/android/gms/internal/ads/beb$a$b;

    move-result-object v0

    const-string v1, "E"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/beb$a$b;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/beb$a$b;

    move-result-object v0

    .line 1067
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dnh$b;->d()Lcom/google/android/gms/internal/ads/dnh;

    move-result-object v0

    .line 8
    check-cast v0, Lcom/google/android/gms/internal/ads/dnh;

    check-cast v0, Lcom/google/android/gms/internal/ads/beb$a;

    sput-object v0, Lcom/google/android/gms/internal/ads/cvr;->a:Lcom/google/android/gms/internal/ads/beb$a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/beb$a;
    .locals 1

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/ads/cvr;->a:Lcom/google/android/gms/internal/ads/beb$a;

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/beb$a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {p1, v1, v0}, Lcom/google/android/gms/internal/ads/cvj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/beb$a;

    move-result-object p1

    return-object p1
.end method
