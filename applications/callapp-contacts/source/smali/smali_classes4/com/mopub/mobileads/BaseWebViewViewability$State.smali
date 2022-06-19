.class public final enum Lcom/mopub/mobileads/BaseWebViewViewability$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mobileads/BaseWebViewViewability;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mopub/mobileads/BaseWebViewViewability$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mopub/mobileads/BaseWebViewViewability$State;

.field public static final enum IMPRESSED:Lcom/mopub/mobileads/BaseWebViewViewability$State;

.field public static final enum INIT:Lcom/mopub/mobileads/BaseWebViewViewability$State;

.field public static final enum STARTED:Lcom/mopub/mobileads/BaseWebViewViewability$State;

.field public static final enum STOPPED:Lcom/mopub/mobileads/BaseWebViewViewability$State;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 21
    new-instance v0, Lcom/mopub/mobileads/BaseWebViewViewability$State;

    const-string v1, "INIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mopub/mobileads/BaseWebViewViewability$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mopub/mobileads/BaseWebViewViewability$State;->INIT:Lcom/mopub/mobileads/BaseWebViewViewability$State;

    new-instance v1, Lcom/mopub/mobileads/BaseWebViewViewability$State;

    const-string v3, "STARTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/mopub/mobileads/BaseWebViewViewability$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/mopub/mobileads/BaseWebViewViewability$State;->STARTED:Lcom/mopub/mobileads/BaseWebViewViewability$State;

    new-instance v3, Lcom/mopub/mobileads/BaseWebViewViewability$State;

    const-string v5, "IMPRESSED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/mopub/mobileads/BaseWebViewViewability$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/mopub/mobileads/BaseWebViewViewability$State;->IMPRESSED:Lcom/mopub/mobileads/BaseWebViewViewability$State;

    new-instance v5, Lcom/mopub/mobileads/BaseWebViewViewability$State;

    const-string v7, "STOPPED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/mopub/mobileads/BaseWebViewViewability$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/mopub/mobileads/BaseWebViewViewability$State;->STOPPED:Lcom/mopub/mobileads/BaseWebViewViewability$State;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/mopub/mobileads/BaseWebViewViewability$State;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/mopub/mobileads/BaseWebViewViewability$State;->$VALUES:[Lcom/mopub/mobileads/BaseWebViewViewability$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/mobileads/BaseWebViewViewability$State;
    .locals 1

    .line 21
    const-class v0, Lcom/mopub/mobileads/BaseWebViewViewability$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mopub/mobileads/BaseWebViewViewability$State;

    return-object p0
.end method

.method public static values()[Lcom/mopub/mobileads/BaseWebViewViewability$State;
    .locals 1

    .line 21
    sget-object v0, Lcom/mopub/mobileads/BaseWebViewViewability$State;->$VALUES:[Lcom/mopub/mobileads/BaseWebViewViewability$State;

    invoke-virtual {v0}, [Lcom/mopub/mobileads/BaseWebViewViewability$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/mobileads/BaseWebViewViewability$State;

    return-object v0
.end method
