.class final Lio/bidmachine/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/ContextProvider;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lio/bidmachine/k;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getActivity()Landroid/app/Activity;
    .locals 2

    .line 27
    invoke-virtual {p0}, Lio/bidmachine/k;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 28
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 29
    check-cast v0, Landroid/app/Activity;

    return-object v0

    .line 31
    :cond_0
    invoke-static {}, Lio/bidmachine/d;->get()Lio/bidmachine/d;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/d;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 21
    iget-object v0, p0, Lio/bidmachine/k;->context:Landroid/content/Context;

    return-object v0
.end method
