.class public Lcom/callapp/contacts/service/CallAppService$LocalCallAppServiceBinder;
.super Landroid/os/Binder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/service/CallAppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalCallAppServiceBinder"
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/service/CallAppService;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/service/CallAppService;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/callapp/contacts/service/CallAppService$LocalCallAppServiceBinder;->a:Lcom/callapp/contacts/service/CallAppService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/callapp/contacts/service/CallAppService;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/callapp/contacts/service/CallAppService$LocalCallAppServiceBinder;->a:Lcom/callapp/contacts/service/CallAppService;

    return-object v0
.end method
