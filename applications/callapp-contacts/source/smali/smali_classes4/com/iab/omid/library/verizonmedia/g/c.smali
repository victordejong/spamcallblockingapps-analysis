.class public final Lcom/iab/omid/library/verizonmedia/g/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/iab/omid/library/verizonmedia/g/a/b$b;


# instance fields
.field final a:Lcom/iab/omid/library/verizonmedia/g/a/c;

.field private b:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/iab/omid/library/verizonmedia/g/a/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/iab/omid/library/verizonmedia/g/c;->a:Lcom/iab/omid/library/verizonmedia/g/a/c;

    return-void
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/iab/omid/library/verizonmedia/g/c;->b:Lorg/json/JSONObject;

    return-object v0
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/iab/omid/library/verizonmedia/g/c;->b:Lorg/json/JSONObject;

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/iab/omid/library/verizonmedia/g/c;->a:Lcom/iab/omid/library/verizonmedia/g/a/c;

    new-instance v1, Lcom/iab/omid/library/verizonmedia/g/a/d;

    invoke-direct {v1, p0}, Lcom/iab/omid/library/verizonmedia/g/a/d;-><init>(Lcom/iab/omid/library/verizonmedia/g/a/b$b;)V

    invoke-virtual {v0, v1}, Lcom/iab/omid/library/verizonmedia/g/a/c;->a(Lcom/iab/omid/library/verizonmedia/g/a/b;)V

    return-void
.end method
