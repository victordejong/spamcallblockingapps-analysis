.class public interface abstract Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator$Order;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<WHERE::",
        "Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator<",
        "TWHERE;TOPERATOR;>;OPERATOR::",
        "Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator<",
        "TWHERE;TOPERATOR;>;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0004\n\u0002\u0008\u000f\u0008f\u0018\u0000*\u0014\u0008\u0000\u0010\u0001*\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u0000*\u0014\u0008\u0001\u0010\u0002*\u000e\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00020\u00002\u00020\u0003:\u0001\u001bJ\r\u0010\u0004\u001a\u00028\u0001H&\u00a2\u0006\u0002\u0010\u0005J%\u0010\u0006\u001a\u00028\u00002\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH&\u00a2\u0006\u0002\u0010\u000cJ%\u0010\u0006\u001a\u00028\u00002\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\r2\u0006\u0010\u000b\u001a\u00020\rH&\u00a2\u0006\u0002\u0010\u000eJ\u001d\u0010\u000f\u001a\u00028\u00002\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u0008H&\u00a2\u0006\u0002\u0010\u0011J\u001d\u0010\u0012\u001a\u00028\u00002\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u0003H&\u00a2\u0006\u0002\u0010\u0013J\u001d\u0010\u0014\u001a\u00028\u00002\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\rH&\u00a2\u0006\u0002\u0010\u0015J\u001d\u0010\u0016\u001a\u00028\u00002\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\rH&\u00a2\u0006\u0002\u0010\u0015J\u001d\u0010\u0017\u001a\u00028\u00002\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\u0003H&\u00a2\u0006\u0002\u0010\u0013J\r\u0010\u0018\u001a\u00028\u0001H&\u00a2\u0006\u0002\u0010\u0005J\u001d\u0010\u0019\u001a\u00028\u00002\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\rH&\u00a2\u0006\u0002\u0010\u0015J\u001d\u0010\u001a\u001a\u00028\u00002\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u0010\u001a\u00020\rH&\u00a2\u0006\u0002\u0010\u0015\u00a8\u0006\u001c"
    }
    d2 = {
        "Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;",
        "WHERE",
        "OPERATOR",
        "",
        "and",
        "()Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;",
        "between",
        "key",
        "",
        "first",
        "Ljava/util/Date;",
        "second",
        "(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;",
        "",
        "(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;)Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;",
        "containString",
        "value",
        "(Ljava/lang/String;Ljava/lang/String;)Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;",
        "eq",
        "(Ljava/lang/String;Ljava/lang/Object;)Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;",
        "greaterThan",
        "(Ljava/lang/String;Ljava/lang/Number;)Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;",
        "greaterThanOrEq",
        "notEq",
        "or",
        "smallerThan",
        "smallerThanOrEq",
        "Order",
        "hybid.sdk.voyager_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# virtual methods
.method public abstract and()Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TOPERATOR;"
        }
    .end annotation
.end method

.method public abstract between(Ljava/lang/String;Ljava/lang/Number;Ljava/lang/Number;)Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Number;",
            "Ljava/lang/Number;",
            ")TWHERE;"
        }
    .end annotation
.end method

.method public abstract between(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")TWHERE;"
        }
    .end annotation
.end method

.method public abstract containString(Ljava/lang/String;Ljava/lang/String;)Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TWHERE;"
        }
    .end annotation
.end method

.method public abstract eq(Ljava/lang/String;Ljava/lang/Object;)Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")TWHERE;"
        }
    .end annotation
.end method

.method public abstract greaterThan(Ljava/lang/String;Ljava/lang/Number;)Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Number;",
            ")TWHERE;"
        }
    .end annotation
.end method

.method public abstract greaterThanOrEq(Ljava/lang/String;Ljava/lang/Number;)Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Number;",
            ")TWHERE;"
        }
    .end annotation
.end method

.method public abstract notEq(Ljava/lang/String;Ljava/lang/Object;)Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")TWHERE;"
        }
    .end annotation
.end method

.method public abstract or()Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TOPERATOR;"
        }
    .end annotation
.end method

.method public abstract smallerThan(Ljava/lang/String;Ljava/lang/Number;)Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Number;",
            ")TWHERE;"
        }
    .end annotation
.end method

.method public abstract smallerThanOrEq(Ljava/lang/String;Ljava/lang/Number;)Lnet/pubnative/lite/sdk/consent/db/ISelectionOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Number;",
            ")TWHERE;"
        }
    .end annotation
.end method
