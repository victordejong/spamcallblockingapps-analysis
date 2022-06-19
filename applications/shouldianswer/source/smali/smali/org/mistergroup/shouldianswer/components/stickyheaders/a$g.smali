.class final Lorg/mistergroup/shouldianswer/components/stickyheaders/a$g;
.super Ljava/lang/Object;
.source "SectioningAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mistergroup/shouldianswer/components/stickyheaders/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "g"
.end annotation


# instance fields
.field private a:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$g;->a:Landroid/util/SparseBooleanArray;

    return-void
.end method


# virtual methods
.method public final a()Landroid/util/SparseBooleanArray;
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/mistergroup/shouldianswer/components/stickyheaders/a$g;->a:Landroid/util/SparseBooleanArray;

    return-object v0
.end method
