.class public Lcom/callapp/contacts/activity/base/CallAppRow$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/base/CallAppRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public a:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

.field public b:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

.field public c:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->d:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()Lcom/callapp/contacts/activity/base/CallAppRow;
    .locals 4

    .line 89
    new-instance v0, Lcom/callapp/contacts/activity/base/CallAppRow;

    iget-object v1, p0, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/callapp/contacts/activity/base/CallAppRow;-><init>(Landroid/content/Context;)V

    .line 90
    iget-object v1, p0, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->a:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    iget-object v2, p0, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->b:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    iget-object v3, p0, Lcom/callapp/contacts/activity/base/CallAppRow$Builder;->c:Lcom/callapp/contacts/activity/base/CallAppViewTypes;

    invoke-virtual {v0, v1, v2, v3}, Lcom/callapp/contacts/activity/base/CallAppRow;->a(Lcom/callapp/contacts/activity/base/CallAppViewTypes;Lcom/callapp/contacts/activity/base/CallAppViewTypes;Lcom/callapp/contacts/activity/base/CallAppViewTypes;)V

    return-object v0
.end method
