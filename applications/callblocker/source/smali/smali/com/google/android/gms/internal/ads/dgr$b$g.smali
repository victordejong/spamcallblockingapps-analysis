.class public final enum Lcom/google/android/gms/internal/ads/dgr$b$g;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dcy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/dgr$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/internal/ads/dgr$b$g;",
        ">;",
        "Lcom/google/android/gms/internal/ads/dcy;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/android/gms/internal/ads/dgr$b$g;

.field public static final enum b:Lcom/google/android/gms/internal/ads/dgr$b$g;

.field private static final enum c:Lcom/google/android/gms/internal/ads/dgr$b$g;

.field private static final enum d:Lcom/google/android/gms/internal/ads/dgr$b$g;

.field private static final enum e:Lcom/google/android/gms/internal/ads/dgr$b$g;

.field private static final enum f:Lcom/google/android/gms/internal/ads/dgr$b$g;

.field private static final enum g:Lcom/google/android/gms/internal/ads/dgr$b$g;

.field private static final enum h:Lcom/google/android/gms/internal/ads/dgr$b$g;

.field private static final enum i:Lcom/google/android/gms/internal/ads/dgr$b$g;

.field private static final enum j:Lcom/google/android/gms/internal/ads/dgr$b$g;

.field private static final k:Lcom/google/android/gms/internal/ads/ddb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/ddb",
            "<",
            "Lcom/google/android/gms/internal/ads/dgr$b$g;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic m:[Lcom/google/android/gms/internal/ads/dgr$b$g;


# instance fields
.field private final l:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 29
    new-instance v0, Lcom/google/android/gms/internal/ads/dgr$b$g;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v4, v4}, Lcom/google/android/gms/internal/ads/dgr$b$g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/dgr$b$g;->c:Lcom/google/android/gms/internal/ads/dgr$b$g;

    .line 30
    new-instance v0, Lcom/google/android/gms/internal/ads/dgr$b$g;

    const-string/jumbo v1, "URL_PHISHING"

    invoke-direct {v0, v1, v5, v5}, Lcom/google/android/gms/internal/ads/dgr$b$g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/dgr$b$g;->d:Lcom/google/android/gms/internal/ads/dgr$b$g;

    .line 31
    new-instance v0, Lcom/google/android/gms/internal/ads/dgr$b$g;

    const-string/jumbo v1, "URL_MALWARE"

    invoke-direct {v0, v1, v6, v6}, Lcom/google/android/gms/internal/ads/dgr$b$g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/dgr$b$g;->e:Lcom/google/android/gms/internal/ads/dgr$b$g;

    .line 32
    new-instance v0, Lcom/google/android/gms/internal/ads/dgr$b$g;

    const-string/jumbo v1, "URL_UNWANTED"

    invoke-direct {v0, v1, v7, v7}, Lcom/google/android/gms/internal/ads/dgr$b$g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/dgr$b$g;->f:Lcom/google/android/gms/internal/ads/dgr$b$g;

    .line 33
    new-instance v0, Lcom/google/android/gms/internal/ads/dgr$b$g;

    const-string/jumbo v1, "CLIENT_SIDE_PHISHING_URL"

    invoke-direct {v0, v1, v8, v8}, Lcom/google/android/gms/internal/ads/dgr$b$g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/dgr$b$g;->g:Lcom/google/android/gms/internal/ads/dgr$b$g;

    .line 34
    new-instance v0, Lcom/google/android/gms/internal/ads/dgr$b$g;

    const-string/jumbo v1, "CLIENT_SIDE_MALWARE_URL"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/dgr$b$g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/dgr$b$g;->h:Lcom/google/android/gms/internal/ads/dgr$b$g;

    .line 35
    new-instance v0, Lcom/google/android/gms/internal/ads/dgr$b$g;

    const-string/jumbo v1, "DANGEROUS_DOWNLOAD_RECOVERY"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/dgr$b$g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/dgr$b$g;->i:Lcom/google/android/gms/internal/ads/dgr$b$g;

    .line 36
    new-instance v0, Lcom/google/android/gms/internal/ads/dgr$b$g;

    const-string/jumbo v1, "DANGEROUS_DOWNLOAD_WARNING"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/dgr$b$g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/dgr$b$g;->j:Lcom/google/android/gms/internal/ads/dgr$b$g;

    .line 37
    new-instance v0, Lcom/google/android/gms/internal/ads/dgr$b$g;

    const-string/jumbo v1, "OCTAGON_AD"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/dgr$b$g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/dgr$b$g;->a:Lcom/google/android/gms/internal/ads/dgr$b$g;

    .line 38
    new-instance v0, Lcom/google/android/gms/internal/ads/dgr$b$g;

    const-string/jumbo v1, "OCTAGON_AD_SB_MATCH"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/dgr$b$g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/ads/dgr$b$g;->b:Lcom/google/android/gms/internal/ads/dgr$b$g;

    .line 39
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/dgr$b$g;

    sget-object v1, Lcom/google/android/gms/internal/ads/dgr$b$g;->c:Lcom/google/android/gms/internal/ads/dgr$b$g;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/ads/dgr$b$g;->d:Lcom/google/android/gms/internal/ads/dgr$b$g;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/internal/ads/dgr$b$g;->e:Lcom/google/android/gms/internal/ads/dgr$b$g;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/gms/internal/ads/dgr$b$g;->f:Lcom/google/android/gms/internal/ads/dgr$b$g;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/gms/internal/ads/dgr$b$g;->g:Lcom/google/android/gms/internal/ads/dgr$b$g;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/gms/internal/ads/dgr$b$g;->h:Lcom/google/android/gms/internal/ads/dgr$b$g;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/gms/internal/ads/dgr$b$g;->i:Lcom/google/android/gms/internal/ads/dgr$b$g;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/gms/internal/ads/dgr$b$g;->j:Lcom/google/android/gms/internal/ads/dgr$b$g;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/gms/internal/ads/dgr$b$g;->a:Lcom/google/android/gms/internal/ads/dgr$b$g;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/gms/internal/ads/dgr$b$g;->b:Lcom/google/android/gms/internal/ads/dgr$b$g;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/internal/ads/dgr$b$g;->m:[Lcom/google/android/gms/internal/ads/dgr$b$g;

    .line 40
    new-instance v0, Lcom/google/android/gms/internal/ads/dgx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dgx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/dgr$b$g;->k:Lcom/google/android/gms/internal/ads/ddb;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput p3, p0, Lcom/google/android/gms/internal/ads/dgr$b$g;->l:I

    .line 28
    return-void
.end method

.method public static a(I)Lcom/google/android/gms/internal/ads/dgr$b$g;
    .locals 1

    .prologue
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 14
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 4
    :pswitch_0
    sget-object v0, Lcom/google/android/gms/internal/ads/dgr$b$g;->c:Lcom/google/android/gms/internal/ads/dgr$b$g;

    goto :goto_0

    .line 5
    :pswitch_1
    sget-object v0, Lcom/google/android/gms/internal/ads/dgr$b$g;->d:Lcom/google/android/gms/internal/ads/dgr$b$g;

    goto :goto_0

    .line 6
    :pswitch_2
    sget-object v0, Lcom/google/android/gms/internal/ads/dgr$b$g;->e:Lcom/google/android/gms/internal/ads/dgr$b$g;

    goto :goto_0

    .line 7
    :pswitch_3
    sget-object v0, Lcom/google/android/gms/internal/ads/dgr$b$g;->f:Lcom/google/android/gms/internal/ads/dgr$b$g;

    goto :goto_0

    .line 8
    :pswitch_4
    sget-object v0, Lcom/google/android/gms/internal/ads/dgr$b$g;->g:Lcom/google/android/gms/internal/ads/dgr$b$g;

    goto :goto_0

    .line 9
    :pswitch_5
    sget-object v0, Lcom/google/android/gms/internal/ads/dgr$b$g;->h:Lcom/google/android/gms/internal/ads/dgr$b$g;

    goto :goto_0

    .line 10
    :pswitch_6
    sget-object v0, Lcom/google/android/gms/internal/ads/dgr$b$g;->i:Lcom/google/android/gms/internal/ads/dgr$b$g;

    goto :goto_0

    .line 11
    :pswitch_7
    sget-object v0, Lcom/google/android/gms/internal/ads/dgr$b$g;->j:Lcom/google/android/gms/internal/ads/dgr$b$g;

    goto :goto_0

    .line 12
    :pswitch_8
    sget-object v0, Lcom/google/android/gms/internal/ads/dgr$b$g;->a:Lcom/google/android/gms/internal/ads/dgr$b$g;

    goto :goto_0

    .line 13
    :pswitch_9
    sget-object v0, Lcom/google/android/gms/internal/ads/dgr$b$g;->b:Lcom/google/android/gms/internal/ads/dgr$b$g;

    goto :goto_0

    .line 3
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public static b()Lcom/google/android/gms/internal/ads/dda;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/google/android/gms/internal/ads/dgy;->a:Lcom/google/android/gms/internal/ads/dda;

    return-object v0
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/dgr$b$g;
    .locals 1

    .prologue
    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/dgr$b$g;->m:[Lcom/google/android/gms/internal/ads/dgr$b$g;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/dgr$b$g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/dgr$b$g;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/ads/dgr$b$g;->l:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 18
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    .line 19
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const-string/jumbo v1, " number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 21
    iget v2, p0, Lcom/google/android/gms/internal/ads/dgr$b$g;->l:I

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    const-string/jumbo v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 24
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dgr$b$g;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 25
    return-object v0
.end method
