.class public final enum Lcom/google/ads/a$b;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/ads/a$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/ads/a$b;

.field public static final enum b:Lcom/google/ads/a$b;

.field public static final enum c:Lcom/google/ads/a$b;

.field private static final synthetic d:[Lcom/google/ads/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/google/ads/a$b;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/google/ads/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/a$b;->a:Lcom/google/ads/a$b;

    .line 5
    new-instance v0, Lcom/google/ads/a$b;

    const-string/jumbo v1, "MALE"

    invoke-direct {v0, v1, v3}, Lcom/google/ads/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/a$b;->b:Lcom/google/ads/a$b;

    .line 6
    new-instance v0, Lcom/google/ads/a$b;

    const-string/jumbo v1, "FEMALE"

    invoke-direct {v0, v1, v4}, Lcom/google/ads/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/ads/a$b;->c:Lcom/google/ads/a$b;

    .line 7
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/ads/a$b;

    sget-object v1, Lcom/google/ads/a$b;->a:Lcom/google/ads/a$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/ads/a$b;->b:Lcom/google/ads/a$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/ads/a$b;->c:Lcom/google/ads/a$b;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/ads/a$b;->d:[Lcom/google/ads/a$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ads/a$b;
    .locals 1

    .prologue
    .line 2
    const-class v0, Lcom/google/ads/a$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/ads/a$b;

    return-object v0
.end method

.method public static values()[Lcom/google/ads/a$b;
    .locals 1

    .prologue
    .line 1
    sget-object v0, Lcom/google/ads/a$b;->d:[Lcom/google/ads/a$b;

    invoke-virtual {v0}, [Lcom/google/ads/a$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ads/a$b;

    return-object v0
.end method
