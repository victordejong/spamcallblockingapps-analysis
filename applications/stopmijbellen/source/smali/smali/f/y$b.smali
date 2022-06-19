.class public Lf/y$b;
.super Lj4/w0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic N:Lf/y;


# direct methods
.method public constructor <init>(Lf/y;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/y$b;->N:Lf/y;

    invoke-direct {p0}, Lj4/w0;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lf/y$b;->N:Lf/y;

    const/4 v0, 0x0

    iput-object v0, p1, Lf/y;->t:Lk/g;

    .line 2
    iget-object p1, p1, Lf/y;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
