.class public final enum Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/dom/smil/SmilPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SmilPlayerState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

.field public static final enum INITIALIZED:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

.field public static final enum PAUSED:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

.field public static final enum PLAYED:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

.field public static final enum PLAYING:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

.field public static final enum STOPPED:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    new-instance v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    const-string v1, "INITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;->INITIALIZED:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    new-instance v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    const-string v3, "PLAYING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;->PLAYING:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    new-instance v3, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    const-string v5, "PLAYED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;->PLAYED:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    new-instance v5, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    const-string v7, "PAUSED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;->PAUSED:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    new-instance v7, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    const-string v9, "STOPPED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;->STOPPED:Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;->$VALUES:[Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;
    .locals 1

    const-class v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    return-object p0
.end method

.method public static values()[Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;
    .locals 1

    sget-object v0, Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;->$VALUES:[Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    invoke-virtual {v0}, [Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/mms/dom/smil/SmilPlayer$SmilPlayerState;

    return-object v0
.end method
