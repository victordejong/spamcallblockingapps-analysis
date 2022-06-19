.class public final Lcom/iab/omid/library/verizonmedia/g/a/d;
.super Lcom/iab/omid/library/verizonmedia/g/a/b;


# direct methods
.method public constructor <init>(Lcom/iab/omid/library/verizonmedia/g/a/b$b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/iab/omid/library/verizonmedia/g/a/b;-><init>(Lcom/iab/omid/library/verizonmedia/g/a/b$b;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1000
    iget-object p1, p0, Lcom/iab/omid/library/verizonmedia/g/a/d;->e:Lcom/iab/omid/library/verizonmedia/g/a/b$b;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/iab/omid/library/verizonmedia/g/a/b$b;->a(Lorg/json/JSONObject;)V

    return-object v0
.end method
