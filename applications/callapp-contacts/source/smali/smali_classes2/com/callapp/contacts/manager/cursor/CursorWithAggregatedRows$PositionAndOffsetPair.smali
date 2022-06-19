.class public Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows$PositionAndOffsetPair;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PositionAndOffsetPair"
.end annotation


# instance fields
.field a:I

.field b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput p1, p0, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows$PositionAndOffsetPair;->a:I

    .line 169
    iput p2, p0, Lcom/callapp/contacts/manager/cursor/CursorWithAggregatedRows$PositionAndOffsetPair;->b:I

    return-void
.end method
