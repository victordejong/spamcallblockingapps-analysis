.class public Lcom/callapp/contacts/loader/device/DeviceIdLoader$DeviceDataResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/loader/device/DeviceIdLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceDataResult"
.end annotation


# instance fields
.field a:Ljava/lang/Long;

.field b:Ljava/lang/String;

.field c:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/callapp/contacts/loader/device/DeviceIdLoader$DeviceDataResult;->a:Ljava/lang/Long;

    .line 42
    iput-object v0, p0, Lcom/callapp/contacts/loader/device/DeviceIdLoader$DeviceDataResult;->b:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/callapp/contacts/loader/device/DeviceIdLoader$DeviceDataResult;->c:Ljava/lang/Boolean;

    return-void
.end method
