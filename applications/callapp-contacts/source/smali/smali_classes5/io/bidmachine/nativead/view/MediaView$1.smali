.class final Lio/bidmachine/nativead/view/MediaView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/nativead/view/MediaView;->createView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/bidmachine/nativead/view/MediaView;


# direct methods
.method constructor <init>(Lio/bidmachine/nativead/view/MediaView;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lio/bidmachine/nativead/view/MediaView$1;->this$0:Lio/bidmachine/nativead/view/MediaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 164
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView$1;->this$0:Lio/bidmachine/nativead/view/MediaView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lio/bidmachine/nativead/view/MediaView;->access$002(Lio/bidmachine/nativead/view/MediaView;Z)Z

    .line 165
    iget-object p1, p0, Lio/bidmachine/nativead/view/MediaView$1;->this$0:Lio/bidmachine/nativead/view/MediaView;

    invoke-static {p1}, Lio/bidmachine/nativead/view/MediaView;->access$100(Lio/bidmachine/nativead/view/MediaView;)V

    return-void
.end method
