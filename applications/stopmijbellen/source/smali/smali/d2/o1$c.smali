.class public Ld2/o1$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld2/o1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ld2/f4;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "_"

    .line 2
    invoke-static {p2, v0}, Landroidx/recyclerview/widget/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "name"

    invoke-virtual {p1, v0}, Ld2/f4;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Ld2/o1$c;->a:Ljava/lang/String;

    const-string p2, "columns"

    .line 3
    invoke-virtual {p1, p2}, Ld2/f4;->h(Ljava/lang/String;)Ld2/d4;

    move-result-object p1

    invoke-static {p1}, Ld2/e4;->j(Ld2/d4;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ld2/o1$c;->b:[Ljava/lang/String;

    return-void
.end method
