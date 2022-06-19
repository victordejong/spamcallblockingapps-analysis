.class Lcom/callapp/contacts/observers/CallLogContentObserver$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/observers/CallLogContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/observers/CallLogContentObserver;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/observers/CallLogContentObserver;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/callapp/contacts/observers/CallLogContentObserver$2;->a:Lcom/callapp/contacts/observers/CallLogContentObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/callapp/contacts/observers/CallLogContentObserver$2;->a:Lcom/callapp/contacts/observers/CallLogContentObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/callapp/contacts/observers/CallLogContentObserver;->c(Z)V

    return-void
.end method
