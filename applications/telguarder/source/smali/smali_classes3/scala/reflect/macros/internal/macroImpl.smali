.class public Lscala/reflect/macros/internal/macroImpl;
.super Lscala/annotation/Annotation;
.source "macroImpl.scala"

# interfaces
.implements Lscala/annotation/StaticAnnotation;


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001\u00112Q!\u0001\u0002\u0001\u0011)\u0011\u0011\"\\1de>LU\u000e\u001d7\u000b\u0005\r!\u0011\u0001C5oi\u0016\u0014h.\u00197\u000b\u0005\u00151\u0011AB7bGJ|7O\u0003\u0002\u0008\u0011\u00059!/\u001a4mK\u000e$(\"A\u0005\u0002\u000bM\u001c\u0017\r\\1\u0014\u0007\u0001Y\u0011\u0003\u0005\u0002\r\u001f5\tQB\u0003\u0002\u000f\u0011\u0005Q\u0011M\u001c8pi\u0006$\u0018n\u001c8\n\u0005Ai!AC!o]>$\u0018\r^5p]B\u0011ABE\u0005\u0003\'5\u0011\u0001c\u0015;bi&\u001c\u0017I\u001c8pi\u0006$\u0018n\u001c8\t\u0011U\u0001!Q1A\u0005\u0002]\tAC]3gKJ,gnY3U_6\u000b7M]8J[Bd7\u0001A\u000b\u00021A\u0011\u0011DG\u0007\u0002\u0011%\u00111\u0004\u0003\u0002\u0004\u0003:L\u0008\u0002C\u000f\u0001\u0005\u0003\u0005\u000b\u0011\u0002\r\u0002+I,g-\u001a:f]\u000e,Gk\\\'bGJ|\u0017*\u001c9mA!)q\u0004\u0001C\u0001A\u00051A(\u001b8jiz\"\"!I\u0012\u0011\u0005\t\u0002Q\"\u0001\u0002\t\u000bUq\u0002\u0019\u0001\r"
.end annotation


# instance fields
.field private final referenceToMacroImpl:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lscala/reflect/macros/internal/macroImpl;->referenceToMacroImpl:Ljava/lang/Object;

    invoke-direct {p0}, Lscala/annotation/Annotation;-><init>()V

    return-void
.end method


# virtual methods
.method public referenceToMacroImpl()Ljava/lang/Object;
    .locals 1

    .line 18
    iget-object v0, p0, Lscala/reflect/macros/internal/macroImpl;->referenceToMacroImpl:Ljava/lang/Object;

    return-object v0
.end method
