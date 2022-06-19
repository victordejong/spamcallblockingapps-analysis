.class public final Lscala/Predef$ArrowAssoc;
.super Ljava/lang/Object;
.source "Predef.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/Predef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ArrowAssoc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final scala$Predef$ArrowAssoc$$self:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .line 247
    iput-object p1, p0, Lscala/Predef$ArrowAssoc;->scala$Predef$ArrowAssoc$$self:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public $minus$greater(Ljava/lang/Object;)Lscala/Tuple2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;)",
            "Lscala/Tuple2<",
            "TA;TB;>;"
        }
    .end annotation

    .line 248
    sget-object v0, Lscala/Predef$ArrowAssoc$;->MODULE$:Lscala/Predef$ArrowAssoc$;

    invoke-virtual {p0}, Lscala/Predef$ArrowAssoc;->scala$Predef$ArrowAssoc$$self()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lscala/Predef$ArrowAssoc$;->$minus$greater$extension(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public $u2192(Ljava/lang/Object;)Lscala/Tuple2;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(TB;)",
            "Lscala/Tuple2<",
            "TA;TB;>;"
        }
    .end annotation

    .line 249
    sget-object v0, Lscala/Predef$ArrowAssoc$;->MODULE$:Lscala/Predef$ArrowAssoc$;

    invoke-virtual {p0}, Lscala/Predef$ArrowAssoc;->scala$Predef$ArrowAssoc$$self()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lscala/Predef$ArrowAssoc$;->$u2192$extension(Ljava/lang/Object;Ljava/lang/Object;)Lscala/Tuple2;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 247
    sget-object v0, Lscala/Predef$ArrowAssoc$;->MODULE$:Lscala/Predef$ArrowAssoc$;

    invoke-virtual {p0}, Lscala/Predef$ArrowAssoc;->scala$Predef$ArrowAssoc$$self()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lscala/Predef$ArrowAssoc$;->equals$extension(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 247
    sget-object v0, Lscala/Predef$ArrowAssoc$;->MODULE$:Lscala/Predef$ArrowAssoc$;

    invoke-virtual {p0}, Lscala/Predef$ArrowAssoc;->scala$Predef$ArrowAssoc$$self()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/Predef$ArrowAssoc$;->hashCode$extension(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public scala$Predef$ArrowAssoc$$self()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lscala/Predef$ArrowAssoc;->scala$Predef$ArrowAssoc$$self:Ljava/lang/Object;

    return-object v0
.end method
