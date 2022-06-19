.class public Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows$DataAndPosition;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataAndPosition"
.end annotation


# instance fields
.field a:I

.field public b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TDataType;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows;


# direct methods
.method public constructor <init>(Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows;Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDataType;I)V"
        }
    .end annotation

    .line 177
    iput-object p1, p0, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows$DataAndPosition;->c:Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p2, p0, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows$DataAndPosition;->b:Ljava/lang/Object;

    .line 179
    iput p3, p0, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows$DataAndPosition;->a:I

    return-void
.end method
