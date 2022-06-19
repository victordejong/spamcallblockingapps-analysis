.class Lcom/callapp/contacts/activity/favorites/AutoScroller$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/activity/favorites/AutoScroller;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/callapp/contacts/activity/favorites/AutoScroller;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/activity/favorites/AutoScroller;II)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/callapp/contacts/activity/favorites/AutoScroller$1;->c:Lcom/callapp/contacts/activity/favorites/AutoScroller;

    iput p2, p0, Lcom/callapp/contacts/activity/favorites/AutoScroller$1;->a:I

    iput p3, p0, Lcom/callapp/contacts/activity/favorites/AutoScroller$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/callapp/contacts/activity/favorites/AutoScroller$1;->c:Lcom/callapp/contacts/activity/favorites/AutoScroller;

    iget v1, p0, Lcom/callapp/contacts/activity/favorites/AutoScroller$1;->a:I

    iget v2, p0, Lcom/callapp/contacts/activity/favorites/AutoScroller$1;->b:I

    invoke-static {v0, v1, v2}, Lcom/callapp/contacts/activity/favorites/AutoScroller;->a(Lcom/callapp/contacts/activity/favorites/AutoScroller;II)V

    return-void
.end method
