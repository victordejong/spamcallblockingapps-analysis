.class Lcom/callapp/contacts/observers/CallLogContentObserver$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/observers/CallLogContentObserver$1;->b(Lcom/callapp/framework/phone/Phone;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/framework/phone/Phone;

.field final synthetic b:Lcom/callapp/contacts/observers/CallLogContentObserver$1;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/observers/CallLogContentObserver$1;Lcom/callapp/framework/phone/Phone;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/callapp/contacts/observers/CallLogContentObserver$1$1;->b:Lcom/callapp/contacts/observers/CallLogContentObserver$1;

    iput-object p2, p0, Lcom/callapp/contacts/observers/CallLogContentObserver$1$1;->a:Lcom/callapp/framework/phone/Phone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 77
    invoke-static {}, Lcom/callapp/contacts/observers/CallLogContentObserver;->d()Lcom/callapp/contacts/observers/CallLogContentObserver;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/observers/CallLogContentObserver;->c(Z)V

    .line 78
    invoke-static {}, Lcom/callapp/contacts/observers/CallLogContentObserver;->d()Lcom/callapp/contacts/observers/CallLogContentObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/observers/CallLogContentObserver$1$1;->a:Lcom/callapp/framework/phone/Phone;

    invoke-static {v0, v1}, Lcom/callapp/contacts/observers/CallLogContentObserver;->a(Lcom/callapp/contacts/observers/CallLogContentObserver;Lcom/callapp/framework/phone/Phone;)V

    .line 79
    invoke-static {}, Lcom/callapp/contacts/observers/CallLogContentObserver;->d()Lcom/callapp/contacts/observers/CallLogContentObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/callapp/contacts/observers/CallLogContentObserver$1$1;->a:Lcom/callapp/framework/phone/Phone;

    invoke-static {v0, v1}, Lcom/callapp/contacts/observers/CallLogContentObserver;->b(Lcom/callapp/contacts/observers/CallLogContentObserver;Lcom/callapp/framework/phone/Phone;)V

    return-void
.end method
