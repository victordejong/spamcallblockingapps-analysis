.class public Le00$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le00;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public d:Landroidx/recyclerview/widget/RecyclerView;

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Le00$c;->a:Z

    iput v0, p0, Le00$c;->b:I

    iput v0, p0, Le00$c;->c:I

    const/4 v1, 0x0

    iput-object v1, p0, Le00$c;->d:Landroidx/recyclerview/widget/RecyclerView;

    iput v0, p0, Le00$c;->e:I

    return-void
.end method
