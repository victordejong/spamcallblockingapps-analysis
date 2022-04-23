package android.support.constraint.solver.widgets;

import android.support.constraint.solver.widgets.ConstraintAnchor;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:android/support/constraint/solver/widgets/Snapshot.class */
public class Snapshot {
    private ArrayList<Connection> mConnections = new ArrayList<>();
    private int mHeight;
    private int mWidth;

    /* renamed from: mX */
    private int f12mX;

    /* renamed from: mY */
    private int f13mY;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:android/support/constraint/solver/widgets/Snapshot$Connection.class */
    public static class Connection {
        private ConstraintAnchor mAnchor;
        private int mCreator;
        private int mMargin;
        private ConstraintAnchor.Strength mStrengh;
        private ConstraintAnchor mTarget;

        public Connection(ConstraintAnchor constraintAnchor) {
            this.mAnchor = constraintAnchor;
            this.mTarget = constraintAnchor.getTarget();
            this.mMargin = constraintAnchor.getMargin();
            this.mStrengh = constraintAnchor.getStrength();
            this.mCreator = constraintAnchor.getConnectionCreator();
        }

        public void applyTo(ConstraintWidget constraintWidget) {
            constraintWidget.getAnchor(this.mAnchor.getType()).connect(this.mTarget, this.mMargin, this.mStrengh, this.mCreator);
        }

        public void updateFrom(ConstraintWidget constraintWidget) {
            this.mAnchor = constraintWidget.getAnchor(this.mAnchor.getType());
            if (this.mAnchor != null) {
                this.mTarget = this.mAnchor.getTarget();
                this.mMargin = this.mAnchor.getMargin();
                this.mStrengh = this.mAnchor.getStrength();
                this.mCreator = this.mAnchor.getConnectionCreator();
                return;
            }
            this.mTarget = null;
            this.mMargin = 0;
            this.mStrengh = ConstraintAnchor.Strength.STRONG;
            this.mCreator = 0;
        }
    }

    public Snapshot(ConstraintWidget constraintWidget) {
        this.f12mX = constraintWidget.getX();
        this.f13mY = constraintWidget.getY();
        this.mWidth = constraintWidget.getWidth();
        this.mHeight = constraintWidget.getHeight();
        ArrayList<ConstraintAnchor> anchors = constraintWidget.getAnchors();
        int size = anchors.size();
        for (int i = 0; i < size; i++) {
            this.mConnections.add(new Connection(anchors.get(i)));
        }
    }

    public void applyTo(ConstraintWidget constraintWidget) {
        constraintWidget.setX(this.f12mX);
        constraintWidget.setY(this.f13mY);
        constraintWidget.setWidth(this.mWidth);
        constraintWidget.setHeight(this.mHeight);
        int size = this.mConnections.size();
        for (int i = 0; i < size; i++) {
            this.mConnections.get(i).applyTo(constraintWidget);
        }
    }

    public void updateFrom(ConstraintWidget constraintWidget) {
        this.f12mX = constraintWidget.getX();
        this.f13mY = constraintWidget.getY();
        this.mWidth = constraintWidget.getWidth();
        this.mHeight = constraintWidget.getHeight();
        int size = this.mConnections.size();
        for (int i = 0; i < size; i++) {
            this.mConnections.get(i).updateFrom(constraintWidget);
        }
    }
}
