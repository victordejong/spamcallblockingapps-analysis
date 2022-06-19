.class public Lcarbon/widget/TableView;
.super Lcarbon/widget/RecyclerView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcarbon/widget/TableView$b;,
        Lcarbon/widget/TableView$d;,
        Lcarbon/widget/TableView$e;,
        Lcarbon/widget/TableView$f;,
        Lcarbon/widget/TableView$c;,
        Lcarbon/widget/TableView$a;
    }
.end annotation


# instance fields
.field public h0:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Lcarbon/widget/TableView$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcarbon/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcarbon/widget/TableView;->h0:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcarbon/widget/TableView;->w(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcarbon/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcarbon/widget/TableView;->h0:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcarbon/widget/TableView;->w(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcarbon/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcarbon/widget/TableView;->h0:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcarbon/widget/TableView;->w(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final w(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    const-class p1, Ljava/lang/String;

    new-instance v0, Lcarbon/widget/TableView$f;

    invoke-direct {v0}, Lcarbon/widget/TableView$f;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcarbon/widget/TableView;->x(Ljava/lang/Class;Lcarbon/widget/TableView$c;)V

    const-class p1, Ljava/lang/Integer;

    new-instance v0, Lcarbon/widget/TableView$e;

    invoke-direct {v0}, Lcarbon/widget/TableView$e;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcarbon/widget/TableView;->x(Ljava/lang/Class;Lcarbon/widget/TableView$c;)V

    const-class p1, Ljava/lang/Float;

    new-instance v0, Lcarbon/widget/TableView$d;

    invoke-direct {v0}, Lcarbon/widget/TableView$d;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcarbon/widget/TableView;->x(Ljava/lang/Class;Lcarbon/widget/TableView$c;)V

    const-class p1, Ljava/lang/Boolean;

    new-instance v0, Lcarbon/widget/TableView$b;

    invoke-direct {v0}, Lcarbon/widget/TableView$b;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcarbon/widget/TableView;->x(Ljava/lang/Class;Lcarbon/widget/TableView$c;)V

    return-void
.end method

.method public x(Ljava/lang/Class;Lcarbon/widget/TableView$c;)V
    .locals 1

    iget-object v0, p0, Lcarbon/widget/TableView;->h0:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
