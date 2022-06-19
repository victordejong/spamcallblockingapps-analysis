.class public Lcom/callapp/contacts/util/callappRomHelper/romHelper/base/RomHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/callapp/contacts/util/callappRomHelper/romHelper/base/RomAction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    invoke-static {}, Lcom/callapp/contacts/util/callappRomHelper/romHelper/base/detector/RomDetector;->isMIUI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    new-instance v0, Lcom/callapp/contacts/util/callappRomHelper/romHelper/miui/MIUIHelper;

    invoke-direct {v0}, Lcom/callapp/contacts/util/callappRomHelper/romHelper/miui/MIUIHelper;-><init>()V

    sput-object v0, Lcom/callapp/contacts/util/callappRomHelper/romHelper/base/RomHelper;->a:Lcom/callapp/contacts/util/callappRomHelper/romHelper/base/RomAction;

    return-void

    .line 17
    :cond_0
    invoke-static {}, Lcom/callapp/contacts/util/callappRomHelper/romHelper/base/detector/RomDetector;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18
    new-instance v0, Lcom/callapp/contacts/util/callappRomHelper/romHelper/AndroidMarshmallowHelper;

    invoke-direct {v0}, Lcom/callapp/contacts/util/callappRomHelper/romHelper/AndroidMarshmallowHelper;-><init>()V

    sput-object v0, Lcom/callapp/contacts/util/callappRomHelper/romHelper/base/RomHelper;->a:Lcom/callapp/contacts/util/callappRomHelper/romHelper/base/RomAction;

    return-void

    .line 20
    :cond_1
    new-instance v0, Lcom/callapp/contacts/util/callappRomHelper/romHelper/BelowMHelper;

    invoke-direct {v0}, Lcom/callapp/contacts/util/callappRomHelper/romHelper/BelowMHelper;-><init>()V

    sput-object v0, Lcom/callapp/contacts/util/callappRomHelper/romHelper/base/RomHelper;->a:Lcom/callapp/contacts/util/callappRomHelper/romHelper/base/RomAction;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    .line 25
    sget-object v0, Lcom/callapp/contacts/util/callappRomHelper/romHelper/base/RomHelper;->a:Lcom/callapp/contacts/util/callappRomHelper/romHelper/base/RomAction;

    invoke-interface {v0, p0}, Lcom/callapp/contacts/util/callappRomHelper/romHelper/base/RomAction;->b(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    .line 29
    sget-object v0, Lcom/callapp/contacts/util/callappRomHelper/romHelper/base/RomHelper;->a:Lcom/callapp/contacts/util/callappRomHelper/romHelper/base/RomAction;

    invoke-interface {v0, p0}, Lcom/callapp/contacts/util/callappRomHelper/romHelper/base/RomAction;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method
