.class public Lcom/callapp/contacts/manager/task/DoneCountNotifier;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/callapp/contacts/manager/task/Task$DoneListener;


# instance fields
.field private final a:I

.field private b:I

.field private final c:Lcom/callapp/contacts/manager/task/Task$DoneListener;


# direct methods
.method public constructor <init>(ILcom/callapp/contacts/manager/task/Task$DoneListener;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/callapp/contacts/manager/task/DoneCountNotifier;->b:I

    .line 9
    iput p1, p0, Lcom/callapp/contacts/manager/task/DoneCountNotifier;->a:I

    .line 10
    iput-object p2, p0, Lcom/callapp/contacts/manager/task/DoneCountNotifier;->c:Lcom/callapp/contacts/manager/task/Task$DoneListener;

    return-void
.end method


# virtual methods
.method public onDone()V
    .locals 3

    .line 15
    iget v0, p0, Lcom/callapp/contacts/manager/task/DoneCountNotifier;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/callapp/contacts/manager/task/DoneCountNotifier;->b:I

    .line 16
    iget-object v1, p0, Lcom/callapp/contacts/manager/task/DoneCountNotifier;->c:Lcom/callapp/contacts/manager/task/Task$DoneListener;

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/callapp/contacts/manager/task/DoneCountNotifier;->a:I

    if-ne v0, v2, :cond_0

    .line 17
    invoke-interface {v1}, Lcom/callapp/contacts/manager/task/Task$DoneListener;->onDone()V

    :cond_0
    return-void
.end method
