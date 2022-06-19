.class Lcom/callapp/contacts/CallAppApplication$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/CallAppApplication;->onCreate()V
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

    .line 389
    iput-object p1, p0, Lcom/callapp/contacts/CallAppApplication$4;->a:Lcom/callapp/contacts/CallAppApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 392
    iget-object v0, p0, Lcom/callapp/contacts/CallAppApplication$4;->a:Lcom/callapp/contacts/CallAppApplication;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/callapp/contacts/CallAppApplication;->a(Lcom/callapp/contacts/CallAppApplication;Ljava/lang/Runnable;)V

    return-void
.end method
