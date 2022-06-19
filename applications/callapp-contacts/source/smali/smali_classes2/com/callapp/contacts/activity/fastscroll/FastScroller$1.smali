.class Lcom/callapp/contacts/activity/fastscroll/FastScroller$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/activity/fastscroll/FastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/activity/fastscroll/FastScroller;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/fastscroll/FastScroller;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller$1;->a:Lcom/callapp/contacts/activity/fastscroll/FastScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/callapp/contacts/activity/fastscroll/FastScroller$1;->a:Lcom/callapp/contacts/activity/fastscroll/FastScroller;

    invoke-static {v0}, Lcom/callapp/contacts/activity/fastscroll/FastScroller;->a(Lcom/callapp/contacts/activity/fastscroll/FastScroller;)V

    return-void
.end method
