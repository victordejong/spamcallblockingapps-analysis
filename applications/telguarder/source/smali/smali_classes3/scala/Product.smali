.class public interface abstract Lscala/Product;
.super Ljava/lang/Object;
.source "Product.scala"

# interfaces
.implements Lscala/Equals;


# annotations
.annotation runtime Lscala/reflect/ScalaSignature;
    bytes = "\u0006\u0001M2q!\u0001\u0002\u0011\u0002\u0007\u0005QAA\u0004Qe>$Wo\u0019;\u000b\u0003\r\tQa]2bY\u0006\u001c\u0001aE\u0002\u0001\r)\u0001\"a\u0002\u0005\u000e\u0003\tI!!\u0003\u0002\u0003\u0007\u0005s\u0017\u0010\u0005\u0002\u0008\u0017%\u0011AB\u0001\u0002\u0007\u000bF,\u0018\r\\:\t\u000b9\u0001A\u0011A\u0008\u0002\r\u0011Jg.\u001b;%)\u0005\u0001\u0002CA\u0004\u0012\u0013\t\u0011\"A\u0001\u0003V]&$\u0008\"\u0002\u000b\u0001\r\u0003)\u0012A\u00049s_\u0012,8\r^#mK6,g\u000e\u001e\u000b\u0003\rYAQaF\nA\u0002a\t\u0011A\u001c\t\u0003\u000feI!A\u0007\u0002\u0003\u0007%sG\u000fC\u0003\u001d\u0001\u0019\u0005Q$\u0001\u0007qe>$Wo\u0019;Be&$\u00180F\u0001\u0019\u0011\u0015y\u0002\u0001\"\u0001!\u0003=\u0001(o\u001c3vGRLE/\u001a:bi>\u0014X#A\u0011\u0011\u0007\t*cA\u0004\u0002\u0008G%\u0011AEA\u0001\u0008a\u0006\u001c7.Y4f\u0013\t1sE\u0001\u0005Ji\u0016\u0014\u0018\r^8s\u0015\t!#\u0001C\u0003*\u0001\u0011\u0005!&A\u0007qe>$Wo\u0019;Qe\u00164\u0017\u000e_\u000b\u0002WA\u0011A&M\u0007\u0002[)\u0011afL\u0001\u0005Y\u0006twMC\u00011\u0003\u0011Q\u0017M^1\n\u0005Ij#AB*ue&tw\r"
.end annotation


# virtual methods
.method public abstract productArity()I
.end method

.method public abstract productElement(I)Ljava/lang/Object;
.end method

.method public abstract productIterator()Lscala/collection/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract productPrefix()Ljava/lang/String;
.end method
