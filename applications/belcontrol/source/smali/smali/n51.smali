.class public Ln51;
.super Ll51;
.source ""


# direct methods
.method public constructor <init>(Ll51$b;)V
    .locals 0

    invoke-direct {p0, p1}, Ll51;-><init>(Ll51$b;)V

    return-void
.end method


# virtual methods
.method public varargs d([Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    iget-object p1, p0, Ll51;->b:Ll51$b;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ll51$b;->a(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method public synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Ln51;->d([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
