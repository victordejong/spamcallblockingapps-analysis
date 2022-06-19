.class public Lcom/allinone/callerid/util/gg/a;
.super Ljava/lang/Object;
.source "ADMHelperMissed.java"


# static fields
.field private static a:Lcom/allinone/callerid/util/gg/a;


# instance fields
.field public b:Lcom/google/android/gms/ads/nativead/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/allinone/callerid/util/gg/a;

    invoke-direct {v0}, Lcom/allinone/callerid/util/gg/a;-><init>()V

    sput-object v0, Lcom/allinone/callerid/util/gg/a;->a:Lcom/allinone/callerid/util/gg/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/allinone/callerid/util/gg/a;->b:Lcom/google/android/gms/ads/nativead/a;

    return-void
.end method

.method public static a()Lcom/allinone/callerid/util/gg/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/allinone/callerid/util/gg/a;->a:Lcom/allinone/callerid/util/gg/a;

    return-object v0
.end method
