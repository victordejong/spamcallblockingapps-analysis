.class public final Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor$$special$$inlined$observable$1;
.super Lkotlin/properties/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;-><init>(JLcom/sinch/verification/core/verification/interceptor/CodeInterceptionListener;Lcom/sinch/verification/core/internal/VerificationMethodType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/properties/b<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J)\u0010\u0002\u001a\u00020\u00032\n\u0010\u0004\u001a\u0006\u0012\u0002\u0008\u00030\u00052\u0006\u0010\u0006\u001a\u00028\u00002\u0006\u0010\u0007\u001a\u00028\u0000H\u0014\u00a2\u0006\u0002\u0010\u0008\u00a8\u0006\t\u00b8\u0006\u0000"
    }
    d2 = {
        "kotlin/properties/Delegates$observable$1",
        "Lkotlin/properties/ObservableProperty;",
        "afterChange",
        "",
        "property",
        "Lkotlin/reflect/KProperty;",
        "oldValue",
        "newValue",
        "(Lkotlin/reflect/KProperty;Ljava/lang/Object;Ljava/lang/Object;)V",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic $initialValue:Ljava/lang/Object;

.field final synthetic this$0:Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;)V
    .locals 0

    iput-object p1, p0, Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor$$special$$inlined$observable$1;->$initialValue:Ljava/lang/Object;

    iput-object p3, p0, Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor$$special$$inlined$observable$1;->this$0:Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;

    .line 33
    invoke-direct {p0, p2}, Lkotlin/properties/b;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final afterChange(Lkotlin/reflect/KProperty;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KProperty<",
            "*>;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    .line 71
    iget-object p1, p0, Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor$$special$$inlined$observable$1;->this$0:Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;

    invoke-virtual {p1}, Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;->getState()Lcom/sinch/verification/core/verification/interceptor/InterceptorState;

    move-result-object p1

    sget-object p2, Lcom/sinch/verification/core/verification/interceptor/InterceptorState;->STARTED:Lcom/sinch/verification/core/verification/interceptor/InterceptorState;

    if-ne p1, p2, :cond_0

    .line 72
    iget-object p1, p0, Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor$$special$$inlined$observable$1;->this$0:Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;

    invoke-static {p1}, Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;->access$initializeCancelHandler(Lcom/sinch/verification/core/verification/interceptor/BasicCodeInterceptor;)V

    :cond_0
    return-void
.end method
