.class public Lcom/callapp/contacts/util/callappRomHelper/romHelper/base/detector/RomDetector;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Z
    .locals 2

    .line 11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isMIUI()Z
    .locals 1

    .line 7
    invoke-static {}, Lcom/callapp/contacts/util/callappRomHelper/romHelper/base/detector/MIUIDetector;->isMIUI()Z

    move-result v0

    return v0
.end method
