.class final Lcom/callapp/contacts/observers/CallLogContentObserver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/activity/interfaces/OnMissedCallCardChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/observers/CallLogContentObserver;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/callapp/contacts/observers/CallLogContentObserver$1;->b:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Lcom/callapp/framework/phone/Phone;)V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/callapp/contacts/observers/CallLogContentObserver$1;->b:Landroid/os/Handler;

    new-instance v1, Lcom/callapp/contacts/observers/CallLogContentObserver$1$1;

    invoke-direct {v1, p0, p1}, Lcom/callapp/contacts/observers/CallLogContentObserver$1$1;-><init>(Lcom/callapp/contacts/observers/CallLogContentObserver$1;Lcom/callapp/framework/phone/Phone;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
