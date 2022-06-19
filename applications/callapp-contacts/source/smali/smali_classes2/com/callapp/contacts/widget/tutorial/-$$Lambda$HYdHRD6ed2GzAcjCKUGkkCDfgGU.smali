.class public final synthetic Lcom/callapp/contacts/widget/tutorial/-$$Lambda$HYdHRD6ed2GzAcjCKUGkkCDfgGU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/callapp/contacts/util/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/callapp/contacts/widget/tutorial/-$$Lambda$HYdHRD6ed2GzAcjCKUGkkCDfgGU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/callapp/contacts/widget/tutorial/-$$Lambda$HYdHRD6ed2GzAcjCKUGkkCDfgGU;

    invoke-direct {v0}, Lcom/callapp/contacts/widget/tutorial/-$$Lambda$HYdHRD6ed2GzAcjCKUGkkCDfgGU;-><init>()V

    sput-object v0, Lcom/callapp/contacts/widget/tutorial/-$$Lambda$HYdHRD6ed2GzAcjCKUGkkCDfgGU;->INSTANCE:Lcom/callapp/contacts/widget/tutorial/-$$Lambda$HYdHRD6ed2GzAcjCKUGkkCDfgGU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept()Z
    .locals 1

    invoke-static {}, Lcom/callapp/contacts/util/callappRomHelper/romHelper/base/detector/MIUIDetector;->isMIUI()Z

    move-result v0

    return v0
.end method
