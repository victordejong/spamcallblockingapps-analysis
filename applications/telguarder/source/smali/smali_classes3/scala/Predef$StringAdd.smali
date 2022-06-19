.class public final Lscala/Predef$StringAdd;
.super Ljava/lang/Object;
.source "Predef.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/Predef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StringAdd"
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
.field private final scala$Predef$StringAdd$$self:Ljava/lang/Object;
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

    .line 269
    iput-object p1, p0, Lscala/Predef$StringAdd;->scala$Predef$StringAdd$$self:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public $plus(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 270
    sget-object v0, Lscala/Predef$StringAdd$;->MODULE$:Lscala/Predef$StringAdd$;

    invoke-virtual {p0}, Lscala/Predef$StringAdd;->scala$Predef$StringAdd$$self()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lscala/Predef$StringAdd$;->$plus$extension(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 269
    sget-object v0, Lscala/Predef$StringAdd$;->MODULE$:Lscala/Predef$StringAdd$;

    invoke-virtual {p0}, Lscala/Predef$StringAdd;->scala$Predef$StringAdd$$self()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lscala/Predef$StringAdd$;->equals$extension(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 269
    sget-object v0, Lscala/Predef$StringAdd$;->MODULE$:Lscala/Predef$StringAdd$;

    invoke-virtual {p0}, Lscala/Predef$StringAdd;->scala$Predef$StringAdd$$self()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/Predef$StringAdd$;->hashCode$extension(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public scala$Predef$StringAdd$$self()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 269
    iget-object v0, p0, Lscala/Predef$StringAdd;->scala$Predef$StringAdd$$self:Ljava/lang/Object;

    return-object v0
.end method
