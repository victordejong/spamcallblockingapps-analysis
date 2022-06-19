.class public final Lscala/Predef$StringFormat;
.super Ljava/lang/Object;
.source "Predef.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/Predef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StringFormat"
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
.field private final scala$Predef$StringFormat$$self:Ljava/lang/Object;
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

    .line 259
    iput-object p1, p0, Lscala/Predef$StringFormat;->scala$Predef$StringFormat$$self:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 259
    sget-object v0, Lscala/Predef$StringFormat$;->MODULE$:Lscala/Predef$StringFormat$;

    invoke-virtual {p0}, Lscala/Predef$StringFormat;->scala$Predef$StringFormat$$self()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lscala/Predef$StringFormat$;->equals$extension(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public formatted(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 264
    sget-object v0, Lscala/Predef$StringFormat$;->MODULE$:Lscala/Predef$StringFormat$;

    invoke-virtual {p0}, Lscala/Predef$StringFormat;->scala$Predef$StringFormat$$self()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lscala/Predef$StringFormat$;->formatted$extension(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 2

    .line 259
    sget-object v0, Lscala/Predef$StringFormat$;->MODULE$:Lscala/Predef$StringFormat$;

    invoke-virtual {p0}, Lscala/Predef$StringFormat;->scala$Predef$StringFormat$$self()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/Predef$StringFormat$;->hashCode$extension(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public scala$Predef$StringFormat$$self()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lscala/Predef$StringFormat;->scala$Predef$StringFormat$$self:Ljava/lang/Object;

    return-object v0
.end method
