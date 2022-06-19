.class public Li7/d;
.super Li7/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(Li7/b$b;)V
    .locals 0

    invoke-direct {p0, p1}, Li7/b;-><init>(Li7/b$b;)V

    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p1, p0, Li7/b;->b:Li7/b$b;

    check-cast p1, Lh7/d;

    const/4 v0, 0x0

    .line 2
    iput-object v0, p1, Lh7/d;->a:Lorg/json/JSONObject;

    return-object v0
.end method
