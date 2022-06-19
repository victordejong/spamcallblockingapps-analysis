.class public Lcom/iab/omid/library/pubmatic/c/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/iab/omid/library/pubmatic/c/d;

.field private final b:Lcom/iab/omid/library/pubmatic/c/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/iab/omid/library/pubmatic/c/d;

    invoke-direct {v0}, Lcom/iab/omid/library/pubmatic/c/d;-><init>()V

    iput-object v0, p0, Lcom/iab/omid/library/pubmatic/c/b;->a:Lcom/iab/omid/library/pubmatic/c/d;

    new-instance v1, Lcom/iab/omid/library/pubmatic/c/c;

    invoke-direct {v1, v0}, Lcom/iab/omid/library/pubmatic/c/c;-><init>(Lcom/iab/omid/library/pubmatic/c/a;)V

    iput-object v1, p0, Lcom/iab/omid/library/pubmatic/c/b;->b:Lcom/iab/omid/library/pubmatic/c/c;

    return-void
.end method


# virtual methods
.method public a()Lcom/iab/omid/library/pubmatic/c/a;
    .locals 1

    iget-object v0, p0, Lcom/iab/omid/library/pubmatic/c/b;->b:Lcom/iab/omid/library/pubmatic/c/c;

    return-object v0
.end method

.method public b()Lcom/iab/omid/library/pubmatic/c/a;
    .locals 1

    iget-object v0, p0, Lcom/iab/omid/library/pubmatic/c/b;->a:Lcom/iab/omid/library/pubmatic/c/d;

    return-object v0
.end method
