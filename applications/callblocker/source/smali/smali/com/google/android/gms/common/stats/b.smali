.class public final Lcom/google/android/gms/common/stats/b;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.1.1"


# static fields
.field public static final a:Landroid/content/ComponentName;

.field private static b:I

.field private static c:I

.field private static d:I

.field private static e:I

.field private static f:I

.field private static g:I

.field private static h:I

.field private static i:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "com.google.android.gms"

    const-string/jumbo v2, "com.google.android.gms.common.stats.GmsCoreStatsService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/common/stats/b;->a:Landroid/content/ComponentName;

    .line 3
    const/4 v0, 0x0

    sput v0, Lcom/google/android/gms/common/stats/b;->b:I

    .line 4
    sput v3, Lcom/google/android/gms/common/stats/b;->c:I

    .line 5
    const/4 v0, 0x2

    sput v0, Lcom/google/android/gms/common/stats/b;->d:I

    .line 6
    const/4 v0, 0x4

    sput v0, Lcom/google/android/gms/common/stats/b;->e:I

    .line 7
    const/16 v0, 0x8

    sput v0, Lcom/google/android/gms/common/stats/b;->f:I

    .line 8
    const/16 v0, 0x10

    sput v0, Lcom/google/android/gms/common/stats/b;->g:I

    .line 9
    const/16 v0, 0x20

    sput v0, Lcom/google/android/gms/common/stats/b;->h:I

    .line 10
    sput v3, Lcom/google/android/gms/common/stats/b;->i:I

    return-void
.end method
