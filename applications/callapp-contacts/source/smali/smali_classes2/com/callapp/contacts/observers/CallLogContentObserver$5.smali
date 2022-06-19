.class Lcom/callapp/contacts/observers/CallLogContentObserver$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/callapp/contacts/observers/CallLogContentObserver;->a(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/callapp/contacts/observers/CallLogContentObserver;


# direct methods
.method constructor <init>(Lcom/callapp/contacts/observers/CallLogContentObserver;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/callapp/contacts/observers/CallLogContentObserver$5;->a:Lcom/callapp/contacts/observers/CallLogContentObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 308
    check-cast p1, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;

    check-cast p2, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;

    .line 1312
    iget-object p1, p1, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->b:Ljava/util/Date;

    iget-object p2, p2, Lcom/callapp/contacts/util/CallLogUtils$MissedCallData;->b:Ljava/util/Date;

    invoke-virtual {p1, p2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p1

    neg-int p1, p1

    return p1
.end method
