.class Lcom/callapp/contacts/CallAppApplication$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/CallAppApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/CallAppApplication;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/CallAppApplication;)V
    .locals 0

    .line 505
    iput-object p1, p0, Lcom/callapp/contacts/CallAppApplication$11;->a:Lcom/callapp/contacts/CallAppApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 509
    new-instance v0, Lcom/callapp/contacts/CallAppApplication$11$1;

    invoke-direct {v0, p0}, Lcom/callapp/contacts/CallAppApplication$11$1;-><init>(Lcom/callapp/contacts/CallAppApplication$11;)V

    invoke-static {v0}, Lcom/callapp/contacts/activity/base/BaseActivity;->safeRun(Ljava/lang/Runnable;)V

    return-void
.end method
